class RenamePrefCodeColumnToPrefecturess < ActiveRecord::Migration[7.0]
  def change
    rename_column :prefectures, :pref_code, :prefecture_code
  end
end
