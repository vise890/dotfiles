HOME = ENV['HOME']

task :default do
  Rake::Task['copy_dotfiles'].invoke
  Rake::Task['install:oh-my-zsh'].invoke
  Rake::Task['install:scm_breeze'].invoke
  Rake::Task['install:vundle'].invoke
end


task "copy_dotfiles" do

  # cleanup old backup files
  system "rm -rf #{HOME}/.*.old"

  current_dir = Dir.getwd

  excluded_files = ["Rakefile", "todo.txt", "done.txt", ".", ".."]
  dotfiles_to_copy = Dir.entries(".").reject { |e| excluded_files.include? e }

  dotfiles_to_copy.each do |filename|

    source_path = "#{current_dir}/#{filename}"
    dest_path =  "#{HOME}/.#{filename}"

    if (File.exists?(dest_path) || File.symlink?(dest_path))
      backup(dest_path)
      File.delete(dest_path)
    end

    FileUtils.ln_s(source_path, dest_path)
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
  # FIXME: still doesn't work on linux
  system 'echo "\n" | vim - +PluginInstall +qall!'
end

def backup(filepath)
  backup_filepath = "#{filepath}.old"
  FileUtils.copy_entry(filepath, backup_filepath)
end

