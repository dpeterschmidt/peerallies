class CreatePeerAllies < ActiveRecord::Migration
 def up
    create_table 'peer_allies' do |t|
      t.string 'name'
      t.string 'grade'
      t.text 'bio'
    end
  end

  def down
    drop_table 'peer_allies' # deletes the whole table and all its data!
  end
end
