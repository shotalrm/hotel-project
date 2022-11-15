class RenamePrefectureCodeColumnToPrefecturess < ActiveRecord::Migration[7.0]
  def change
    rename_column :prefectures, :prefecture_code, :pref_code
  end
end
