class CreateSocks < ActiveRecord::Migration
  def change
    create_table :socks do |t|
      t.string :color
      t.string :pattern
      t.string :length
      t.string :material

      t.timestamps null: false
    end
  end
end
