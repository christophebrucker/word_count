puts "Enter the file name you want to scroll through"
file_name = gets.chomp

words = Hash.new(0) # creating the hash with words and occurrences

File.foreach(file_name) do |line|
  line.split.each { |word| words[word] += 1 }
end

words.sort_by { |word, count| count }.each do |word, count|
  puts "\"#{word}\" has #{count} occurrences"
end
