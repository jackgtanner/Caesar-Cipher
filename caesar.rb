require 'pry'

def caesar_cipher (word, shift)
    aLower = ("a".."z").to_a
    word= word.split("")
    newArray = []


    word.map do |letter|
        if letter != letter.swapcase
            index = aLower.index(letter.downcase)


           if letter.downcase == letter
            newArray.push aLower[(index + shift) % 26]
          else
            newArray.push aLower[(index + shift) % 26].upcase
          end
        else
            newArray.push letter
        end
    end

    newArray = newArray.join
    puts newArray

end


#Example
# caesar_cipher("What a string!", 5)  ##Should output: "Bmfy f xywnsl!"



puts "What word/phrase should we caesar cipher?"
word = gets.chomp
puts "By what number should we shift this by?"
number = gets.chomp.to_i

caesar_cipher(word, number)


