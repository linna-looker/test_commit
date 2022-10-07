project_name: "linna_test"

# # Use local_dependency: To enable referencing of another project
# # on this instance with include: statements
#
# local_dependency: {
#   project: "name_of_other_project"
# }
constant: orders_name {
  value: "orders"
}

constant: previous_period_start_date
{
  value:"@{get_custom_period_filter_value}"
}

constant: get_custom_period_filter_value
{
  value: "{% if _explore._name == 'sales_overview_api' %}
  {% assign assigned_custom_period_filter_value = _filters['sales_overview_api.custom_period'] | sql_quote %}
  {% endif %}"
}

# Ismail Testing - Looks like exception is really only for devrived table for _filters not just any sql parameter even with sql_quote
# Cannot use "_filters" in SQL.
# Learn more.
# linna_test.model:30 linna_test:orders
constant: custom_status_filter_value
{
  value: "{% if _explore._name == 'orders' %}
  {% assign assigned_custom_status_filter_value = _filters['orders.status'] | sql_quote %}
  {{assigned_custom_status_filter_value}}
  {% endif %}"
}
