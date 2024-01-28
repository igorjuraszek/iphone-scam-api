class CreateOrders < ActiveRecord::Migration[7.1]
  def change
    create_table :orders do |t|
      t.string :name
      t.string :surname
      t.datetime :schedule
      t.string :city
      t.string :street
      t.string :number
      t.string :zip_code
      t.string :country
      t.string :email
      t.string :phone_number

      t.timestamps
    end
  end
end
