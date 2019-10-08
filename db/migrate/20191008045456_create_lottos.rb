class CreateLottos < ActiveRecord::Migration[5.2]
  def change
    create_table :lottos do |t|
      t.integer :num1
      t.integer :num2
      t.integer :num3
      t.integer :num4
      t.integer :num5
      t.integer :num6

      t.timestamps
    end
  end
end
