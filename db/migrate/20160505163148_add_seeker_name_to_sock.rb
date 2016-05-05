class AddSeekerNameToSock < ActiveRecord::Migration
  def change
    add_column :socks, :seeker_name, :string
  end
end
