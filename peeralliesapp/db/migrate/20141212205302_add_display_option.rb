class AddDisplayOption < ActiveRecord::Migration
  def change
  	add_column :peer_allies, :display, :boolean
  end

end
