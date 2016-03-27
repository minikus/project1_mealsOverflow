class CreateUsers < ActiveRecord::Migration
  def change
      create_table :users do |t|
        t.text :firstname
        t.text :email
        t.integer :mobile
        t.text :password_digest
        t.text :image
        t.timestamps
    end
  end
end
