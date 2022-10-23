class ApplicationController < Sinatra::Base

  set :default_content_type, 'application/json'

  # USER  get "/users" do
  #   users = User.all
  #   users.to_json
  # end


  
  # ARTICLE
  get "/articles" do
    articles = Article.all
    articles.to_json
  end

  get "/articles" do
    articles = Article.all
    articles.to_json(include: :comments)
  end


  post"/articles" do
    new_article = Article.create(
      title: params[:title],
      content: params[:content],
      image_url: params[:image_url],
      number_of_likes: params[:number_of_likes],
      category_id: params[:category_id],
      author_id: params[:author_id]
    )
    new_article.to_json
  end

  patch"/articles/:id" do
    article = Article.find(params[:id])
    article.update(
      title: params[:title],
      content: params[:content],
      image_url: params[:image_url],
      number_of_likes: params[:number_of_likes],
      category_id: params[:category_id],
      author_id: params[:author_id]
    )
    article.to_json
  end

  delete"/articles" do
    article = Article.find(params[:id])
    article.destroy
    article.to_json
  end

  # COMMENTS
  get "/comments" do
    comments = Comment.all
    comments.to_json
  end

  post "/comments" do
    new_comment = Comment.create(
      value: params[:value],
      article_id: params[:article_id],
      user_id: params[:user_id]
    )
    new_comment.to_json
  end

  patch"/comments/:id" do
    comment = Comment.find(params[:id])
    comment.update(
      value: params[:value],
    )
    comment.to_json
  end

  delete "/comments/:id" do
    comments = Comment.find(params[:id])
    comments.destroy
    comments.to_json
  end

  # CATEGORY
  get "/categories" do
    category = Category.all
    category.to_json
  end

  post "/categories" do
    new_category = Category.create(
      name: params[:name],
      author_id: params[:author_id]
    )
    new_category.to_json
  end

  patch"/categories/:id" do
    category = Category.find(params[:id])
    category.update(
      value: params[:value],
      )
    category.to_json
  end

  delete "/categories/:id" do
    category = Category.find(params[:id])
    category.destroy
    category.to_json
  end

  # BOOKMARKS
  get "/bookmarks" do
    bookmark = Bookmark.all
    bookmark.to_json
  end

  post "/bookmarks" do
    saved_bookmark = Bookmark.create(
      user_id: params[:user_id],
      article_id: params[:article_id]
    )
    saved_bookmark.to_json
  end

  delete "bookmarks/:id" do
    bookmark = Bookmark.find(params[:id])
    bookmark.destroy
    bookmark.to_json
  end



end
