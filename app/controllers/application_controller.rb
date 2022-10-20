class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
      # Homepage
     get "/" do
    { message: "lets create articles" }.to_json
    end

     #get method for all articles
    get '/articles' do
      articles = Article.all
      status 200
      articles.to_json
    end
    

    # get article by  id
    get '/articles/:id' do
      articles = Article.find(params[:id])
      status 200
      articles.to_json
    end


    # POST method for all article(create)
    post '/articles' do
      send_it = Article.create(
        title:params[:title],
        content:params[:content],
        category_id:params[:category_id],
         author_id:params[:author_id],
         comment_id:params[:comment_id],
         like_id:params[:like_id],
         user_id:params[:user_id],
          bookmark_id:params[:bookmark_id],
         date_posted:params[:date_posted]
      )
      status 200
      body 'house_created'
    end

    #PUT method (replaces something)
    put '/articles/:id' do
      fix_it = Article.find(params[:id])
      fix_it.update(
        title:params[:title],
        content:params[:content],
        category_id:params[:category_id],
         author_id:params[:author_id],
         comment_id:params[:comment_id],
         like_id:params[:like_id],
         user_id:params[:user_id],
          bookmark_id:params[:bookmark_id],
         date_posted:params[:date_posted]
      )
      fix_it.to_json
    end
      # PATCH(modify something.)
      patch '/articles/:id' do
      fix_it = Article.find(params[:id])
       fix_it.update(
        title:params[:title],
        content:params[:content],
        category_id:params[:category_id],
         author_id:params[:author_id],
         comment_id:params[:comment_id],
         like_id:params[:like_id],
         user_id:params[:user_id],
          bookmark_id:params[:bookmark_id],
         date_posted:params[:date_posted]
        )
        fix_it.to_json
      end

      # DELETE
      delete '/articles/:id' do
        erase = Article.find(params[:id])
        erase.destroy
        status 200
        body 'Article_deleted'
      end
end
