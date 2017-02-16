require 'fileutils'

file_list = Dir.glob ['*.srt']

# p file_list

file_list.each do |f|
  if f =~ /The Expanse/ then
    f2 = f.sub(/(S\d+).*(E\d+).*/, '\1\2.eng.srt') #n.b. use single quotes when using capture groups.
    # p f2
    FileUtils.mv f, f2
  end
end
