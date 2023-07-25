class ArticleTagSerializer < ActiveModel::Serializer
  attributes :id, :article
  has_one :article
  has_one :tag
end
