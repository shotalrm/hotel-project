class AddPrefectureCodeToHotels < ActiveRecord::Migration[7.0]
  def change
    add_column :hotels, :prefecture_code, :integer
  end
end
