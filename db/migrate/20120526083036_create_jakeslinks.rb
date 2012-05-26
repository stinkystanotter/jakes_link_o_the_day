class CreateJakeslinks < ActiveRecord::Migration
  def change
    create_table :jakeslinks do |t|
      t.string :name
      t.text :url

      t.timestamps
    end
  end
end
