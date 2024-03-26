class CreatePayments < ActiveRecord::Migration[6.1]
  def change
    create_table :payments do |t|
      t.float :amount
      t.references :sender
      t.references :recipient
      t.timestamps
    end

    add_foreign_key :payments, :users, column: :sender_id, primary_key: :id
    add_foreign_key :payments, :users, column: :recipient_id, primary_key: :id
  end
end
