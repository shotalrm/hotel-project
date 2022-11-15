class RenamePrefectureCodeColumnToHotels < ActiveRecord::Migration[7.0]
  def change
    rename_column :hotels, :prefecture_code, :prefecture_id
  end
end
