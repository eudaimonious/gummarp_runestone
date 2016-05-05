class AddFinderNameToSock < ActiveRecord::Migration
  def change
    add_column :socks, :finder_name, :string
  end
end
