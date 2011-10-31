require 'rubygems'
require 'awesome_print'

IRB::Irb.class_eval do
	def output_value
		ap @context.last_value
	end
end

begin
	# load wirble
	require 'wirble'

	# start wirble (with color)
	Wirble.init
	Wirble.colorize
rescue LoadError => err
	warn "Couldn't load Wirble: #{err}"
end
