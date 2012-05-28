class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.string :field
      t.link 
      t.string 

      t.timestamps
    end
  end
end
