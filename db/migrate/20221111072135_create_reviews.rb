class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.float :rate
      t.string :title
      t.string :user_name
      t.text :description

      t.timestamps
    end
  end
end
