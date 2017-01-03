
class TaxonomySerializer < ActiveModel::Serializer
  attributes :id, :title, :allow_multiple, :tags_recommendations, :tags_actions

end

