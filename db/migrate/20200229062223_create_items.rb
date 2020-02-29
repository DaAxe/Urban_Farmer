class CreateItems < ActiveRecord::Migration[5.2]
  def change
    create_table :items do |t|
      t.references :user, foreign_key: true
      t.string :title
      t.string :type
      t.decimal :price, precision: 6, scale: 2
      t.datetime :harvest_time
      t.boolean :spray_free
      t.boolean :organic
      t.boolean :gluten_free

      t.timestamps
    end
  end
end
