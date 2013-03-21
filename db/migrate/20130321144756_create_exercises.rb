class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.references :user
      t.string :name

      t.timestamps
    end
    add_index :exercises, :user_id
  end
end
