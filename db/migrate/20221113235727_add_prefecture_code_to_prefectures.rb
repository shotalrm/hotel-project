class AddPrefectureCodeToPrefectures < ActiveRecord::Migration[7.0]
  def change
    add_column :prefectures, :prefecture_code, :integer
  end
end
