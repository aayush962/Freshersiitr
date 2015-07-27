class Fresher < ActiveRecord::Base
	validates :name, :email, :branch, :contact, :skills,  presence: true
end
