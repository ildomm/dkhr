
class CategorySerializer < ActiveModel::Serializer
  attributes :id, :taxonomy_id, :manager_id, :updated_user_id, :title, :short_title, :description, :url

end

