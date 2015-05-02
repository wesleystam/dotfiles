#!/usr/bin/ruby

%w(vimrc rvmrc gitconfig gemrc vim irbrc railsrc).each do |filename|
  unless File.exist?("#{Dir.home}/.#{filename}")
    File.symlink("#{Dir.home}/dotfiles/#{filename}", "#{Dir.home}/.#{filename}")
  end
end

File.open("#{Dir.home}/.bashrc", 'a') do |file|
  file.puts ""
  file.puts "# load dotfiles"
  file.puts ". ~/dotfiles/bashrc"
end
