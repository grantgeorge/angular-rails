class CreateWidgets < ActiveRecord::Migration
  def change
    create_table :widgets do |t|
      t.string :name, null: false
      t.text :description
      t.boolean :ready_on

      t.timestamps null: false
    end
  end
end
