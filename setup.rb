#!/usr/bin/ruby -w

Dir.entries('.').each do |filename|
  next if filename[0] == 46 || __FILE__ == filename || filename == "README"
  unless File.exist?("#{File.expand_path("~")}/.#{filename}")
    File.symlink("#{File.expand_path(".")}/#{filename}", "#{File.expand_path("~")}/.#{filename}")
  end
end
