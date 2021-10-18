class CreateMeasurements < ActiveRecord::Migration[6.0]
  def change
    create_table :measurements do |t|
      t.string :name
      t.string :created_by
      
      t.timestamps
    end
  end
end
