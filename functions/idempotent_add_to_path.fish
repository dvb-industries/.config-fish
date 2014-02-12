function -d "add a directory to the PATH if not already present" idempotent_add_to_path
  for directory in $argv
    if not contains $directory $PATH
      set PATH $PATH $directory
    end
  end
end