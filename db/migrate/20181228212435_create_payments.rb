class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.belongs_to :user
      t.belongs_to :loan
      t.date :payment_date
      t.float :payment_amount
      t.string :status 
    end
  end
end
