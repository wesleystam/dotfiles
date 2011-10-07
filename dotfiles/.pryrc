begin
	require 'awesome_print' 
	Pry.print = proc { |output, value| output.puts value.ai }
rescue LoadError => err
	puts "no awesome_print :("
end
