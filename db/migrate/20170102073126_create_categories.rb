class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.integer :taxonomy_id
      t.integer :manager_id
      t.integer :updated_user_id
      t.string :title
      t.string :short_title
      t.string :description
      t.string :url

      t.timestamps null: false
    end
  end
end
