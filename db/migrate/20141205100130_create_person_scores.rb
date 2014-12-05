class CreatePersonScores < ActiveRecord::Migration
  def change
    create_table :person_scores do |t|
      t.string :name
      t.integer :score
      t.integer :hi_score
      t.datetime :create
      t.datetime :update

      t.timestamps
    end
  end
end
