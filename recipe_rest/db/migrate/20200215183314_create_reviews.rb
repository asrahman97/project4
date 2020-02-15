class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|

      t.text :review_message
      t.integer :score

      t.references :user, null: false, foreign_key: true
      t.references :recipe, null: false, foreign_key: true

      t.timestamps
    end
  end
end
