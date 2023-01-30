class CreateConans < ActiveRecord::Migration[7.0]
  def change
    create_table :conans do |t|
      t.string :character
      t.string :gadget
      t.string :vehicle

      t.timestamps
    end
  end
end
