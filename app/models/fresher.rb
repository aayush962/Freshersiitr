class Fresher < ActiveRecord::Base
	validates :name, :email, :branch, :contact,  presence: true
	validates :about, presence: true
	validates_length_of :contact, :is => 10, :message => "Don't Play! Enter a correct mobile number."
	validates :contact, numericality: true
	validates_length_of :enroll, :is => 8, :message => "Get your ID!! Enrollment number is 8 digits"
	validates :skills, presence: true
	validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
end
