#!/usr/bin/ruby

%w[bashrc vim vimrc gitignore gitconfig gemrc irbrc railsrc].each do |filename|
  unless File.exist?("#{Dir.home}/.#{filename}")
    File.symlink("#{Dir.home}/dotfiles/#{filename}", "#{Dir.home}/.#{filename}")
  end
end
