class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :email, unique: true, null: false
      t.string :status
      t.timestamps null: false
    end
  end
end
