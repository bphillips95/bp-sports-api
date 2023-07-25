class TagSerializer < ActiveModel::Serializer
  attributes :id, :city, :name, :articles
  def articles 
    self.object.article_tags.map do |article_tag|
      {
        name: article_tag.article.title,
        id: article_tag.article.id
      }
    end 
  end
end
