json.extract! report_parameter, :id, :report_type_id, :name, :dataType, :optional, :referenced_table, :html_visualization, :created_at, :updated_at
json.url report_parameter_url(report_parameter, format: :json)
