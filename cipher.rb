def cipher(array, shift)
	temp = []
	bytes = array.unpack('c*')	# Convert chars to binary
	bytes.each { |i| temp << i + shift } # Increment binary by shift
	result = temp.pack('c*')	# Convert binary back to chars
	puts result
end

def decipher(array, shift)
	temp = []
	bytes = array.unpack('c*')
	bytes.each { |i| temp << i - shift }
	result = temp.pack('c*')
	puts result	
end

cipher('What a string!', 5)
decipher('\mfy%f%xywnsl&', 5)