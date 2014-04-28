class AddPledges < ActiveRecord::Migration
  def up
    create_table 'pledges' do |t|
      t.string 'title'
      t.text 'description'
      t.text 'citation'
      t.references 'trackee'
    end
  end

  def down
    drop_table 'pledges'
  end
end
