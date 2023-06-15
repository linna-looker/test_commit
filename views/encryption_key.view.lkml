view: encryption_key {
  sql_table_name: gcpm236.encryption_key ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: cmek_key_name_version {
    type: string
    sql: ${TABLE}.cmek_key_name_version ;;
  }

  dimension_group: cmek_last_known_transition {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.cmek_last_known_transition ;;
  }

  dimension: cmek_valid {
    type: yesno
    sql: ${TABLE}.cmek_valid ;;
  }

  dimension_group: created {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.created_at ;;
  }

  dimension: encrypted_key {
    type: string
    sql: ${TABLE}.encrypted_key ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: type {
    type: string
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
