class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :description
      t.references :user, foreign_key: true
      
      t.timestamps
      end
  end
end