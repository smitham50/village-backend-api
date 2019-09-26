class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :email
      t.string :picture
      t.integer :karma_credits
      t.text :about

      t.timestamps
    end
  end
end
