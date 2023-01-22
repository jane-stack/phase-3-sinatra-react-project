class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  delete "/posts/:id" do
    posts = Post.find(params[:id])
    posts.destroy
    posts.to_json
  end

  patch "/posts/:id" do
    posts = Post.find(params[:id])
    posts.update(
      title: params[:title],
      date: params[:date],
      description: params[:description]
    )
    posts.to_json
  end

  post "/posts" do
    posts = Post.create(
      title: params[:title],
      date: params[:date],
      description: params[:description]
    )
    posts.to_json
  end

  get "/posts" do
    posts = Post.all
    posts.to_json
  end

  get "/" do
    "hello"
  end

end
