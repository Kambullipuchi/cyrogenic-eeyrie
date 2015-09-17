class CreateEmailAPIKeys < ActiveRecord::Migration
  def change
    create_table :email_api_keys do |t|
      t.string :email
      t.string :apikey

      t.timestamps null: false
    end
  end
end
