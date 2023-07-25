class ArticleSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :writer, :article_tags

  # give easy access to tag names for front end
  def article_tags 
    self.object.article_tags.map do |article_tag| 
      {
        name: article_tag.tag.name,
        id: article_tag.tag.id
        }
    end 
  end
  
  def writer 
    { writer_id: self.object.user.id,
      writer_name: self.object.user.full_name }
  end 
end 