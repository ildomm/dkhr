class Category < ActiveRecord::Base
  validates_presence_of :taxonomy_id
  validates_presence_of :manager_id
  validates_presence_of :updated_user_id
  validates_presence_of :title
  validates_presence_of :short_title
  validates_presence_of :description
  validates_presence_of :url

end
