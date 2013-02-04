class EchoController < ApplicationController
	def echo
		puts "++++++++++++++++++++"
		params.each do |key, value|
			puts "Param #{key}: #{value}"
		end
		puts "++++++++++++++++++++"	
	end
end
