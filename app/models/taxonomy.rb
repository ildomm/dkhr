class Taxonomy < ActiveRecord::Base
  validates_presence_of :title
  validates_presence_of :allow_multiple
  validates_presence_of :tags_recommendations
  validates_presence_of :tags_actions

end