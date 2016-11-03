def my_select(collection)
  if block_given? && !collection.empty?
    array = Array.new
    collection.each { |element|
	    if yield(element)
	      array << element
	    end
    }
    array
  else
    puts "You don't have a block!"
  end
end
