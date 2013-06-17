class CreateFrequencies < ActiveRecord::Migration
  def change
    create_table :frequencies do |t|
      t.string :name, nil: false

      t.timestamps
    end
  end
end
