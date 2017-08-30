class CreateCounts < ActiveRecord::Migration[5.1]
  def change
    create_table :counts do |t|
    	
    	t.string :page
    	t.integer :num

    	t.timestamps

    end
  end
end
