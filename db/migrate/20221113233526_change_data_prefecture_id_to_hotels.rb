class ChangeDataPrefectureIdToHotels < ActiveRecord::Migration[7.0]
  def change
    change_column :hotels, :prefecture_id, :integer
  end
end
