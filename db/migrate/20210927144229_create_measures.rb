class CreateMeasures < ActiveRecord::Migration[6.1]
  def change
    create_table :measures do |t|
      t.integer :time
      t.integer :count
      t.references :user, null: false, foreign_key: true
      t.references :training, null: false, foreign_key: true

      t.timestamps
    end
  end
end
