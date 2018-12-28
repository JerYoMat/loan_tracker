class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.string :credit_institution
      t.float :original_amount
      t.float :interest_rate
      t.integer :term
      t.string :type
      t.date :issue_date
      t.integer :due_on 
    end
  end
end
