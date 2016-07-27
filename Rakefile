require 'rake'

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  Dir['*'].sort.each do |file|
    next if %w[Rakefile README.rdoc LICENSE ssh id_dsa.pub ].include? file

    if File.exist?(File.join(ENV['HOME'], ".#{file}"))
      if replace_all
        replace_file(file)
      else
        print "overwrite ~/.#{file}? [ynaq] "
        case $stdin.gets.chomp
        when 'a'
          replace_all = true
          replace_file(file)
        when 'y'
          replace_file(file)
        when 'q'
          exit
        else
          puts "skipping ~/.#{file}"
        end
      end
    else
      link_file(file)
    end
  end

  system %Q{mkdir  -p "$HOME/.ssh/sockets"}
  system %Q{ln -s "$PWD/ssh/config" "$HOME/.ssh/config"}

  # Handle ssh pubkey on its own
  puts "Linking public ssh key"
  system %Q{rm "$HOME/.ssh/id_dsa.pub"}
  system %Q{ln -s "$PWD/id_dsa.pub" "$HOME/.ssh/id_dsa.pub"}
  system %Q{rm "$HOME/.ssh/id_rsa.pub"}
  system %Q{ln -s "$PWD/id_rsa.pub" "$HOME/.ssh/id_rsa.pub"}

  puts "Installing pure"
  system %Q{git clone git@github.com:sindresorhus/pure.git "$HOME/.pure"}
  system %Q{rm /usr/local/share/zsh/site-functions/prompt_pure_setup}
  system %Q{ln -s "$HOME/.pure/pure.zsh" /usr/local/share/zsh/site-functions/prompt_pure_setup}
  system %Q{rm /usr/local/share/zsh/site-functions/async}
  system %Q{ln -s "$HOME/.pure/async.zsh" /usr/local/share/zsh/site-functions/async}


  system %Q{git clone https://github.com/lleirborras/myvimrc.git "$HOME/.myvimrc"}
  system %Q{rm "$HOME/.vim"}
  system %Q{ln -s "$HOME/.myvimrc" "$HOME/.vim"}
  system %Q{rm "$HOME/.vimrc"}
  system %Q{ln -s "$HOME/.myvimrc/vimrc" "$HOME/.vimrc"}
  system %Q{git clone https://github.com/VundleVim/Vundle.vim.git "$HOME/.vim/bundle/Vundle.vim"}
  system %Q{vim +PluginInstall +qall}

end

def replace_file(file)
  system %Q{rm "$HOME/.#{file}"}
  link_file(file)
end

def link_file(file)
  puts "linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end
