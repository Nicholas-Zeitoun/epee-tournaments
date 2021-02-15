class CreateFencers < ActiveRecord::Migration[6.0]
  def change
    create_table :fencers do |t|
      t.string :name
      t.integer :ranking

      t.timestamps
    end
  end
end
