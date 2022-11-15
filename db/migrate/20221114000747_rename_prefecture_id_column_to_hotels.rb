class RenamePrefectureIdColumnToHotels < ActiveRecord::Migration[7.0]
  def change
    rename_column :hotels, :prefecture_id, :prefecture_code
  end
end
