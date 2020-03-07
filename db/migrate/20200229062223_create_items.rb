class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.string :title, null: false       
      t.string :type, null: false
      t.decimal :price, precision: 6, scale: 2, null: false
      t.datetime :harvest_time, null: false
      t.boolean :spray_free
      t.boolean :organic
      t.boolean :gluten_free

      t.timestamps
    end
  end
end
