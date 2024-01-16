#!/usr/bin/ruby

%w[vim vimrc gitconfig gitattributes gemrc irbrc railsrc zshrc].each do |filename|
  unless File.exist?("#{Dir.home}/.#{filename}")
    File.symlink("#{Dir.home}/dotfiles/#{filename}", "#{Dir.home}/.#{filename}")
  end
end
