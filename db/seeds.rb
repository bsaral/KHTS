# encoding: UTF-8

User.create(:username => "manager", :password => "123", :password_confirmation => "123", :role => "manager")

User.create(:username => "user", :password => "123", :password_confirmation => "123", :role => "user")

User.create(:username => "user1", :password => "123", :password_confirmation => "123", :role => "user")

User.create(:username => "user2", :password => "123", :password_confirmation => "123", :role => "user")

User.create(:username => "user3", :password => "123", :password_confirmation => "123", :role => "user")



Lesson.create(:eyt => "e1",:sky =>"s1",:tg =>"t1",:ebh =>"eb1",:elt =>"el1",:ilt =>"i1")

Lesson.create(:eyt => "e2",:sky =>"s2",:tg =>"t2",:ebh =>"eb2",:elt =>"el2",:ilt =>"i2")

Lesson.create(:eyt => "e3",:sky =>"s3",:tg =>"t3",:ebh =>"eb3",:elt =>"el3",:ilt =>"i3")


Unite.create(:u_eyt => "ue1",:u_sky =>"us1",:u_tg =>"ut1",:u_ebh =>"ueb1",:u_elt =>"uel1",:u_ilt =>"ui1")

Unite.create(:u_eyt => "ue2",:u_sky =>"us2",:u_tg =>"ut2",:u_ebh =>"ueb2",:u_elt =>"uel2",:u_ilt =>"ui2")

Unite.create(:u_eyt => "ue3",:u_sky =>"us3",:u_tg =>"ut3",:u_ebh =>"ueb3",:u_elt =>"uel3",:u_ilt =>"ui3")


