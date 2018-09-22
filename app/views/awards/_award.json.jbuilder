json.extract! award, :id, :name, :stock, :minimumAge, :maximumAge, :picture, :description, :terms, :startDate, :endDate, :rate, :civicoins, :enterprise_id, :created_at, :updated_at
json.url award_url(award, format: :json)
