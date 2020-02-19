module PostsHelper
  # we can only have one :author_id
  def author_id_field(post)
    if post.author.nil?
      select_tag "post[author_id]", options_from_collection_for_select(Author.all, :id, :name)
    else
      # Add hidden field form_for :author_id when we browse to
      #  /authors/1/posts/new
      hidden_field_tag "post[author_id]", post.author_id
    end
  end
end