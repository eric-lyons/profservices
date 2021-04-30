view: steps {
  derived_table: {
    persist_for: "24 hours"
    create_process: {
      sql_step:
  CREATE TABLE ${SQL_TABLE_NAME} AS
  (SELECT
    "id"
    FROM
    "public"."airports" AS "airports") LIMIT 500;;
    sql_step: INSERT INTO ${SQL_TABLE_NAME}
    SELECT
    "name" AS "aircraft.name"
    FROM "public"."aircraft" ;;


}}

dimension:id {
  sql: ${TABLE}."id"  ;;
}

    dimension: name {
      sql: ${TABLE}."name"  ;;
    }
}
