class CreateTaxonomies < ActiveRecord::Migration
  def change
    create_table :taxonomies do |t|
      t.string :title
      t.boolean :allow_multiple
      t.boolean :tags_recommendations
      t.boolean :tags_actions

      t.timestamps null: false
    end
  end
end
