#remove all hashes with ages > 100


ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }

# ages.delete_if { |key,value| value > 100 }
# p ages

# old_ages = ages.select { |key,value| value > 100}
# p old_ages

ages.keep_if { |key,value| value > 100 }
p ages
