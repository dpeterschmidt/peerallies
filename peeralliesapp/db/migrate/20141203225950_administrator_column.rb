class AdministratorColumn < ActiveRecord::Migration
  def change
  	add_column :peer_allies, :administrator, :boolean
  end
end
