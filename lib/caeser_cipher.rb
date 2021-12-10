

def caeser_cipher(string, shift)
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    alphabet_array = alphabet.split("")
    string_array = string.split("")
    new_string_array = string_array.map do |letter| 
        new_index = alphabet_array.find_index(letter.downcase) + shift
        if new_index > 25
            new_index -= 26
        end
        if !alphabet_array.include?(letter)
            alphabet_array[new_index].upcase
        else
            alphabet_array[new_index]
        end
    end
    new_string_array.join

end

p caeser_cipher("helloallDFDSFLKJslkjdfzzzzzzzzzz", 5)
