# change the filenames of the Star Wars Rebels episodes so they are Plex friendly.

require 'fileutils'

file_list = Dir.glob ['*.mp4', '*.mkv']

# p file_list

file_list.each do |f|
  if f =~ /Star.Wars.Rebels./ then
    f2 = f.sub("Star.Wars.Rebels.", "Star War Rebels - ")
    f2 = f2.sub(/(S\d+)(E\d+)./, '\1\2 - ') #n.b. use single quotes when using capture groups.
    FileUtils.mv f, f2
  end
end
