

def caeser_cipher(string, shift)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    alphabet_array = alphabet.split("")
    string_array = string.split("")
    new_string_array = string_array.map do |letter| 
        if letter == ' '
            ' '
        else
            new_index = alphabet_array.find_index(letter.downcase) + shift
            while new_index > 25
                new_index -= 26
            end
            if alphabet_array.include?(letter)
                alphabet_array[new_index]
            elsif alphabet_array.map{ |letter| letter.upcase }.include?(letter)
                alphabet_array[new_index].upcase
            end
        end
    end
    new_string_array.join

end

p caeser_cipher("helloallDFDSFL KJslkjdfzzzzzzzzzz", 5)
