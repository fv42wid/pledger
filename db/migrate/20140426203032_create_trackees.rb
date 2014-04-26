class CreateTrackees < ActiveRecord::Migration
  def up
    create_table 'trackees' do |t|
      t.string 'first_name'
      t.string 'last_name'
      t.text 'description'
    end
  end

  def down
    drop_table 'trackees'
  end
end
