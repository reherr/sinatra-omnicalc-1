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

get("/payment/new") do
 erb(:payment_new) 
end
get("/payment/results") do
  @user_apr = params.fetch("user_apr").to_f / 100
  @years_input = params.fetch("user_years").to_f
  @principal_input = params.fetch("user_pv").to_f

  @monthly_rate = @user_apr / 12
  @total_payments = years * 12

  # Monthly Payment Formula
  @monthly_payment = @principal_input * (@monthly_rate / (1 - (1 + @monthly_rate)**(-@total_payments)))

  erb(:payment_results)
end
