class User < ActiveRecord::Base

  attr_accessible 	:email

#  email_regex = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

 # validates :name, 	:presence => true,
 #		   	:length   => { :maximum => 50 },
#			:uniqueness => true
#  validates :email, 	:presence => true,
#			:format   => { :with => email_regex }

end
