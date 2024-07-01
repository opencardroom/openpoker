# Require all files in the ./src/* directory

# Get the current directory path
current_dir = File.expand_path(File.dirname(__FILE__))

Dir.glob(File.join(current_dir, 'src', '**', '*.rb')).each do |file|
  require file
end