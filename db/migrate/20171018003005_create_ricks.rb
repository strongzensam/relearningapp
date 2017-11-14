class CreateRicks < ActiveRecord::Migration[5.1]
  def change
    create_table :ricks do |t|
      t.string :eyeballs

      t.timestamps
    end
  end
end
