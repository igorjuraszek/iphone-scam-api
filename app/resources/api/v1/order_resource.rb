class Api::V1::OrderResource < JSONAPI::Resource
  attributes :name, :surname, :schedule, :city, :street, :number, :zip_code, :country,
             :email, :phone_number
end
