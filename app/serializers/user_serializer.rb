class UserSerializer < ActiveModel::Serializer
  attributes :username, :first_name, :last_name, :id, :writer, :articles 
  def articles
    self.object.articles.map do |article| 
      {
        title: article.title,
        id: article.id
        }
    end 
  end
end