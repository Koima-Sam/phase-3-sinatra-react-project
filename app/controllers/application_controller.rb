class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  # Add your routes here
  get "/users" do
    User.all.to_json
  end

  get "/scholarships" do
    Scholarship.all.to_json
  end

  get "/users/:email" do
    User.find_by(email:params[:email]).to_json
  end

  post "/users" do
   newuser =  User.create("name":params[:name], "email":params[:email],"phone":params[:phone], "password":params[:password])
   newuser.to_json
  end

  get '/saved_scholarships' do
    Saved_Scholarship.all.to_json(include: [:scholarship, :user])
  end

  post '/saved_scholarships' do
    Saved_Scholarship.create("scholarship_id":params[:scholarship_id], "user_id":params[:user_id])
  end

  delete '/saved_scholarships/:id' do
    Saved_Scholarship.find(params[:id]).destroy
  end

end
