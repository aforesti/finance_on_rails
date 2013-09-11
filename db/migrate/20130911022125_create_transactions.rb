class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :date
      t.string :desc
      t.decimal :value
      t.references :account, index: true
      

      t.timestamps
    end
  end
end
