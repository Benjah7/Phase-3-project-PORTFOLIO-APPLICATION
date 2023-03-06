class CreateProjects < ActiveRecord::Migration[6.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :description
      t.string :image_url
      t.string :project_status, default: 0
      t.string :project_Github_url
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
