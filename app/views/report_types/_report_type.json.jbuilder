json.extract! report_type, :id, :name, :report_category_id, :picture, :report_class_id, :created_at, :updated_at
json.url report_type_url(report_type, format: :json)
