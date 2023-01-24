class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  delete "/posts/:id" do
    posts = Post.find(params[:id])
    posts.destroy
    posts.to_json
  end

  patch "/posts/:id" do
    posts = Post.find(params[:id])
    posts.update(
      title: params[:title],
      description: params[:description]
    )
    posts.to_json(include: :user)
  end

  post "/posts" do
    posts = Post.create(
      title: params[:title],
      date: params[:date],
      description: params[:description],
      user_id: params[:user_id]
    )
    posts.to_json(include: :user)
  end

  post "/users" do 
    users = User.find_or_create_by(
      username: params[:username]
    )
    users.to_json
  end

  get "/posts" do
    posts = Post.all
    posts.to_json(include: :user)
  end

  get "/users" do
    users = User.all
    users.to_json
  end

  get "/" do
    "Hello World"
  end

end
