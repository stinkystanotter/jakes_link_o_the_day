class CreateTopic2s < ActiveRecord::Migration
  def change
    create_table :topic2s do |t|
      t.string :title
      t.text :description

      t.timestamps
    end
  end
end
