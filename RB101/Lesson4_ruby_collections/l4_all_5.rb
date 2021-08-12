# Find the index of the first name that starts with 'Be'


flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#p flintstones.select { |name| name.start_with?('Be')}


# p flintstones.fetch('Be')
flintstones.index { |name| name[0, 2] == "Be" }

flintstones.each do |word|
  if word.start_with?('Be')
    p word
  end
end
