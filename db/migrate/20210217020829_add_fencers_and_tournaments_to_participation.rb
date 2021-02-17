class AddFencersAndTournamentsToParticipation < ActiveRecord::Migration[6.0]
  def change
    change_table :participations do |t|
      t.references :fencer, foreign_key: true
      t.references :tournament, foreign_key: true
    end
  end
end
