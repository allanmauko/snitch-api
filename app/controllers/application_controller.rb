class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/" do
    { message: "Good luck with your project!" }.to_json
  end


  #Comment routes:

  get "/comments" do
    comments = Comment.all

    comments.to_json
  end

  get "/comments/:id" do
    comment = Comment.find(params[:id])

    comment.to_json
  end


  post "/comments" do
    comment = Comment.create(comment: params[:comment], 
    article_id: params[:article_id], 
    user_id: params[:user_id])

    comment.to_json
  end

  patch "/comments/:id" do
    comment = Comment.find(params[:id])
    comment.update(
      comment: params[:comment], 
      article_id: params[:article_id], 
      user_id: params[:user_id]
    )

    comment.to_json
  end


  delete "/comments/:id" do
    comment = Comment.find(params[:id])
    comment.destroy
    comment.to_json
  end


  # Likes routes

  get "/likes" do
    likes = Like.all

    likes.to_json
  end


  get "/likes/:id" do
    like = Like.find(params[:id])

    like.to_json
  end

  post "/likes" do
    like = Like.create(count: params[:count],
    user_id: params[:user_id],
    article_id: params[:article_id])

    like.to_json
  end


  patch "/likes/:id" do
    like = Like.find(params[:id])
    like.update(
      count: params[:count],
      user_id: params[:user_id],
      article_id: params[:article_id]
    )

    like.to_json
  end


  delete "/likes/:id" do
    like = Like.find(params[:id])
    like.destroy

    like.to_json
  end
  

end
