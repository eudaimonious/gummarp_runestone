class AddSeekerIdToSock < ActiveRecord::Migration
  def change
    add_column :socks, :seeker_id, :interger
  end
end
