class CreateJointables < ActiveRecord::Migration[6.0]
  def change
    create_table :jointables do |t|
      t.references :item, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
