class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.decimal :sub_total

      t.timestamps
    end
  end
end
