class AddAvatarsToPeerAllies < ActiveRecord::Migration
def self.up
	change_table :peer_allies do |t|
		t.attachment :avatar
	end
end

def self.down
	drop_attached_file :peer_allies, :avatar
end
end