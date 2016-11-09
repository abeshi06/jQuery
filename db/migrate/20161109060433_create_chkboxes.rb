class CreateChkboxes < ActiveRecord::Migration
  def change
    create_table :chkboxes do |t|
      t.boolean :hante
      t.integer :suuji

      t.timestamps null: false
    end
  end
end
