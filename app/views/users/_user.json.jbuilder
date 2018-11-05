json.extract! user, :id, :name, :lastname, :birthday, :email, :password, :gender, :document_type, :documentNumber, :phone, :cellphone, :civicoins, :blood_type, :address, :nationality, :secondaryNationality, :pictureLarge, :pictureMedium, :pictureThumbnail, :created_at, :updated_at
json.url user_url(user, format: :json)
