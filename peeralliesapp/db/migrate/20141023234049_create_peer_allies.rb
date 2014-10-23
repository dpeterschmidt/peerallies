class CreatePeerAllies < ActiveRecord::Migration
  def change
    create_table :peer_allies do |t|

      t.timestamps
    end
  end
end
