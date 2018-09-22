json.extract! report, :id, :report_type_id, :latitude, :longitude, :votes, :totalCalification, :created_at, :updated_at
json.url report_url(report, format: :json)
