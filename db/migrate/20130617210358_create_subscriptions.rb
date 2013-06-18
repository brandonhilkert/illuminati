class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :email, nil: false, index: true
      t.string :topic_1
      t.string :topic_2
      t.string :topic_3
      t.string :frequency_id, nil: false

      t.timestamps
    end
  end
end
