view: embed_config {
  sql_table_name: gcpm236.embed_config ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: alert_url_allowlist {
    type: string
    sql: ${TABLE}.alert_url_allowlist ;;
  }

  dimension: alert_url_label {
    type: string
    sql: ${TABLE}.alert_url_label ;;
  }

  dimension: alert_url_param_owner {
    type: string
    sql: ${TABLE}.alert_url_param_owner ;;
  }

  dimension: domain_whitelist {
    type: string
    sql: ${TABLE}.domain_whitelist ;;
  }

  dimension: hide_look_navigation {
    type: yesno
    sql: ${TABLE}.hide_look_navigation ;;
  }

  dimension: look_filters {
    type: yesno
    sql: ${TABLE}.look_filters ;;
  }

  dimension: sso_auth_enabled {
    type: yesno
    sql: ${TABLE}.sso_auth_enabled ;;
  }

  dimension: strict_sameorigin_for_login {
    type: yesno
    sql: ${TABLE}.strict_sameorigin_for_login ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
