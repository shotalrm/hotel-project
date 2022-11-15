class RenameAddressToPrefectureInHotels < ActiveRecord::Migration[7.0]
  def change
    rename_column :hotels, :address, :prefecture
  end
end
