class CreateDeliveries < ActiveRecord::Migration[7.0]
  def change
    create_table :deliveries do |t|
      t.string :description
      t.date :arrival
      t.text :details

      t.timestamps
    end
  end
end
