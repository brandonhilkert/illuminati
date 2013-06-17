class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.string :email, nil: false, index: true
      t.string :slug, nil: false, index: true
      t.string :frequency_id, nil: false

      t.timestamps
    end
  end
end
