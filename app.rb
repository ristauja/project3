# app.rb
require 'sinatra'
require 'cat_api'
require "holidapi"

class BirthdayHolidays < Sinatra::Base
	get '/' do 
		@birthday_holidays = HolidApi.get(country: 'us', year: 1992, month: 12).flatten
		@current_holidays = HolidApi.get(country: 'us', year: Time.now.year, month: Time.now.month).flatten	
		erb :index

	end
end