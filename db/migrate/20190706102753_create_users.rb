class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :man
      t.string :woman
      t.string :address
      t.integer :postcode
      t.integer :prefecture_code
      t.string :address_city
      t.string :address_street
      t.text :buildname
      t.integer :address_year
      t.integer :birth_month
      t.integer :birth_day
      t.text   :profile
      t.string :profile_image_id
      t.timestamps
    end
  end
end
