# encoding: UTF-8

User.create(:username => "manager", :password => "123", :password_confirmation => "123", :role => "manager")

User.create(:username => "user", :password => "123", :password_confirmation => "123", :role => "user")
