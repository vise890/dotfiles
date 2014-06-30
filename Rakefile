HOME = ENV['HOME']

task :default do
  Rake::Task['copy_dotfiles'].invoke
  Rake::Task['install:oh-my-zsh'].invoke
  Rake::Task['install:scm_breeze'].invoke
  Rake::Task['install:vundle'].invoke
end


task "copy_dotfiles" do

  current_dir = Dir.getwd

  excluded_files = ["Rakefile", ".", ".."]
  dotfiles_to_copy = Dir.entries(".").reject { |e| excluded_files.include? e }

  dotfiles_to_copy.each do |filename|

    source_path = "#{current_dir}/#{filename}"
    dest_path =  "#{HOME}/.#{filename}"

    # FIXME: doesnt work if dest_path = ln
    # (i think).. doesn't work when trying to do the ln below
    backup!(dest_path) if File.exists?(dest_path)

    # FIXME: make symlinks
    # `cp #{source_path} #{dest_path}`
    FileUtils.ln_s source_path, dest_path
  end

end

task "install:oh-my-zsh" do
  system "rm -rf #{HOME}/.bash*" # yeeeeha!
  system "git clone git://github.com/robbyrussell/oh-my-zsh.git #{HOME}/.oh-my-zsh"
end

task "install:scm_breeze" do
  system "git clone git://github.com/ndbroadbent/scm_breeze.git #{HOME}/.scm_breeze"
  system "~/.scm_breeze/install.sh"
end

task "install:vundle" do
  system "git clone https://github.com/gmarik/Vundle.vim.git #{HOME}/.vim/bundle/Vundle.vim"
  # simulate carriage return with puts | (the first run may cause some warnings, as plugins are not installed yet)
  system "echo \"\n\" | vim +PluginInstall"
end

def backup!(filepath)
  backup_filepath = "#{filepath}.old"
  puts backup_filepath
  FileUtils.copy_entry(filepath, backup_filepath)
  File.delete(filepath)
end

