require 'test_helper'

class CustomRoutsTest < ActionDispatch::IntegrationTest
	test "/that /login rout opens the login page" do
		get '/login'
		assert_response :success 
		
	end
	
	test "/that /logout rout opens the logout page" do
		get '/logout'
		assert_response :redirect
		assert_redirected_to '/' 
		
	end	
	
	test "/that /register rout opens the sign up page" do
		get '/register'
		assert_response :success 
		
	end
end
