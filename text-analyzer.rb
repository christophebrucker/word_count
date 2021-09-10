puts "Enter the file name you want to scroll through"
file_name = gets.chomp
words = {} # creating the hash with words and occurencies
input_file = File.open(file_name,'r').each_line do |line|
  array_of_words = line.split
  array_of_words.each { |word|
    if words.has_key?(word)
      words[word] += 1
    else
      words[word] = 1
    end
  }
end

# sort the hash by value, and then print it in this sorted order
words.sort{|a,b| a[1]<=>b[1]}.each { |elem|
  puts "\"#{elem[0]}\" has #{elem[1]} occurrences"
}
