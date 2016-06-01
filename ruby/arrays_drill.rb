
def build_array(item1, item2, item3)
    method_array = [item1, item2, item3]
    return method_array
end

p build_array("ball", 45, true)

def add_to_array(array, newValue)
    array << newValue
end

p add_to_array(["word", true, 23], "item" )
p add_to_array(["blah", false, 22], ["animal", 456, true])


new_array = []
p new_array

new_array += ["hello", 3, false, 73, 8.3]
p new_array

new_array.delete_at(2)
p new_array

new_array.insert(2, "dbc")
p new_array

new_array.delete(new_array.first)
p new_array

puts "The array includes 73: "
puts new_array.include?(73)

puts "The array includes 105: "
puts new_array.include?(105)

newer_array = ["cat", "dog", 6, false, true]
combo = new_array + newer_array
p combo

