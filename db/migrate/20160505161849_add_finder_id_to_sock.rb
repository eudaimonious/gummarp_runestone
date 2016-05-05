class AddFinderIdToSock < ActiveRecord::Migration
  def change
    add_column :socks, :finder_id, :integer
  end
end
