require 'rubygems'
require 'awesome_print'

IRB::Irb.class_eval do
	def output_value
		ap @context.last_value
	end
end
