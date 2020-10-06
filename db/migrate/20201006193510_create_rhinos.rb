class CreateRhinos < ActiveRecord::Migration[6.0]
  def change
    create_table :rhinos do |t|
      t.date :date
      t.time :arrival
      t.string :name
      t.string :company
      t.string :eps
      t.string :arl
      t.string :rh
      t.string :alergy
      t.string :phone
      t.boolean :injury
      t.time :output

      t.timestamps
    end
  end
end
