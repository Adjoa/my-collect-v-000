def my_collect(array)
  if array == []
    puts "This array is empty"
  else
    i = 0
    new_array = []
    while i < array.length do
      new_array << yield(array[i])
    end
  end
  new_array
end

array = ["Tim Jones", "Tom Smith", "Jim Campagno"]

my_collect(array) do |name|
  name.split(" ").first
end
