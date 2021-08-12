# Turn this array into a hash where the names are the keys and the values are the positions in the array.
=begin
convert an array into a hash
the elements of the array will be the keys
the values are the positions in the array.

each element in the array should be selected and moved to the hash as the key
the value should be assigned as the position in the hash.
=end

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

flintstones_hash = {}
flintstones.each_with_index do |name, index|
  flintstones_hash[name] = index
end
p flintstones_hash
