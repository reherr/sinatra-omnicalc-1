require "sinatra"
require "sinatra/reloader"

get("/") do
  "
  <h1>Welcome to your Sinatra App!</h1>
  <p>Define some routes in app.rb</p>
  "
end

get("/square/new") do
  erb(:new_square_calc)
end

get("/square/results") do
  @the_num = params.fetch("users_number").to_f
  @the_result = @the_num ** 2
  erb(:square_results)
end

get("/square_root/new") do 
  erb(:square_root_new)
end

get("/square_root/results") do
@the_num = params.fetch("user_number").to_f
@the_result = Math.sqrt(@the_num)
  erb(:square_root_results)
end
