class AddAuthentication < ActiveRecord::Migration
  def change
  	add_column :peer_allies, :provider, :string
  	add_column :peer_allies, :uid, :string
  	add_column :peer_allies, :ups_id, :string #ups id
  	add_column :peer_allies, :email, :string
  	add_column :peer_allies, :last_name, :string
  	add_column :peer_allies, :first_name, :string
	add_column :peer_allies, :member_of, :string #membership (e.g., faculty or student)
  end
end
