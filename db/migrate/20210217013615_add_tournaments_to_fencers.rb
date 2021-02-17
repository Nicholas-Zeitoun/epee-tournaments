class AddTournamentsToFencers < ActiveRecord::Migration[6.0]
  def change
    change_table :fencers do |t|
      t.references :tournament, foreign_key: true
    end
  end
end
