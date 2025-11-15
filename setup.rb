#!/usr/bin/ruby

system('git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm')

%w[vim vimrc gitconfig gitattributes gemrc irbrc railsrc tmux.conf zshrc].each do |filename|
  unless File.exist?("#{Dir.home}/.#{filename}")
    File.symlink("#{Dir.home}/dotfiles/#{filename}", "#{Dir.home}/.#{filename}")
  end
end
