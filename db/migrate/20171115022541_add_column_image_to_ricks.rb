class AddColumnImageToRicks < ActiveRecord::Migration[5.1]
  def change
  	add_column :ricks, :image, :string
  end
end
