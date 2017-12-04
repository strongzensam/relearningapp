class CreateMorties < ActiveRecord::Migration[5.1]
  def change
    create_table :morties do |t|
      t.string :eyeballs
      t.string :image

      t.timestamps
    end
  end
end
