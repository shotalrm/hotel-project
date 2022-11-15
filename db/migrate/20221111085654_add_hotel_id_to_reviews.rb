class AddHotelIdToReviews < ActiveRecord::Migration[7.0]
  def change
    add_column :reviews, :hotel_id, :integer
  end
end
