# Encrypt method

# Index letters in the string
def encrypt(str)
 index = 0

# For each letter by index advance by 1

 while index < str.length
 
# Edge case conditional for z
 	if str[index] == "z"
 		str[index] = "a"
	else
		str[index] = str[index].next
	end
   index += 1
 end

# Print new string

 puts str
end

# Decrypt

def find_previous_letter(letter)
alphabet = "abcdefghijklmnopqrstuvwxyz"
# Find index of letter
i = alphabet.index(letter)

# Subtract 1 from the index of letter in alphabet

new_i = i - 1

# Find the preceding letter in alphabet

alphabet[new_i]

end

find_previous_letter("j")

def decrypt(str)
 alphabet = "abcdefghijklmnopqrstuvwxyz"
 index = 0

 while index < str.length
   str[index] = find_previous_letter(str[index])
   index += 1
 end

 print str
end

# nested method call NOT WORKING
# decrypt(encrypt("swordfish"))

# Our Driver Code

# ask agent if they want to decrypt or encrypt

puts "Would you like to encrypt or decrypt a password?"
de_or_en = gets.chomp

# ask for password
puts "Enter your password."

password = gets.chomp

# conduct requested operation and print result

if de_or_en == "decrypt"
	decrypt(password)
elsif de_or_en== "encrypt"
	encrypt(password)
else
	puts "Error."
end