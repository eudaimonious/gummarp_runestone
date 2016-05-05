class CreateFinders < ActiveRecord::Migration
  def change
    create_table :finders do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
