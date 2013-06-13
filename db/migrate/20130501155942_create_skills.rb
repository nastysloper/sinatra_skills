class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.string :context
      t.integer :user_skill
      t.integer :years
      t.boolean :formal

      t.timestamps
    end
  end
end
