class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :password_digest
      t.datetime :created_by
      t.datetime :updated_by

      t.timestamps
    end
  end
end
