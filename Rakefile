require 'rake'

desc "install the dot files into user's home directory"
task :install do
  replace_all = false
  Dir['*'].sort.each do |file|
    next if %w[Rakefile README.rdoc LICENSE ssh id_dsa.pub lleir.zsh-theme].include? file

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

  #oh-my-zsh theme
  puts "Installing Yadr"
  system %Q{sh -c "`curl -fsSL https://raw.githubusercontent.com/skwp/dotfiles/master/install.sh`"}


  system %Q{rm -rf $HOME/.zsh.after"}
  system %Q{ln -s "$PWD/zsh" "$HOME/.zsh.after"}

end

def replace_file(file)
  system %Q{rm "$HOME/.#{file}"}
  link_file(file)
end

def link_file(file)
  puts "linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end
