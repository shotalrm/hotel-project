class RemovePrefectureCodeFromHotels < ActiveRecord::Migration[7.0]
  def change
    remove_column :hotels, :prefecture_code, :integer
  end
end
