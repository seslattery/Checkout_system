class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :chemID
      t.string :name
      t.boolean :returned, default: false
      t.timestamps
    end
  end
end
