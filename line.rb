
def puts_flush(text)
    puts text
    STDOUT.flush
end

puts_flush 'Image file:'
imgfile = gets.chomp
imgfile_s = imgfile.gsub(/\.(png|jpg|gif|bmp)$/, '_s.\1')
imgname = imgfile.gsub(/\.(png|jpg|gif|bmp)$/, '_s')

puts_flush 'Source code file:'
srcfile = gets.chomp

puts_flush 'Source code URL:'
url = gets.chomp

puts_flush 'Description:'
desc = gets.chomp

puts_flush 'Keywords:'
keywords = gets.chomp


puts_flush "|[![%s](img/%s)](img/%s)|[%s](%s)|%s|%s|" % [imgname, imgfile_s, imgfile, srcfile, url, desc, keywords]


