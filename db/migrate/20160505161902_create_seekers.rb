class CreateSeekers < ActiveRecord::Migration
  def change
    create_table :seekers do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
