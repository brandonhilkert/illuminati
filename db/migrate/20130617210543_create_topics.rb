class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :name, nil: false
      t.references :subscription, index: true

      t.timestamps
    end
  end
end
