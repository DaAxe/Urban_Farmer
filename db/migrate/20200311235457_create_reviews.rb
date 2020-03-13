class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :rateable, polymorphic: true
      t.integer :rating
      t.text :comment
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end