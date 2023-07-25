class WriterSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name 
    def articles 
      self.object.articles.map do |article| 
      { article_title: article.title }
      
    end
    end
end
