
def substrings(words, arr)

temp = 0
hash = Hash.new(0)

temp_arr = []
temp_char = ''
temp_length = ''



words = words.downcase.split(/[\s]/)


    words.each {
    |word|

    temp_word = word.split('')
        temp_word.each {
            |symbol|
            if symbol =~ /[^a-zA-Z]/
               symbol.replace('')
            end
        }
         temp_word = temp_word.join('')

    temp = temp_word
    length = temp.length
    
        if arr.include?(temp_word)
            hash[temp_word] += +1
        end

        temp_chr = temp_word.split('')
        temp_num = 0
        length.times do
            temp_letter = temp_chr[temp_num]
            if arr.include?(temp_letter)
                hash[temp_letter] += +1
            end
            temp_num += 1
        end


        temp_length = length
        length.times do
            temp_arr = []
            temp_length -= 1

            if temp_length != 1 
            temp_char = temp.slice(0...temp_length)

            if temp_char =~ /[^\s]/
                temp_arr.push(temp_char)
             end
             
             if arr.include?(temp_char)
                hash[temp_char] += +1
               end
           
            end

 
        end


        temp_slice = 0
        temp_length = length
        length.times do
            temp_arr = []
            temp_slice += 1

            if temp_slice != temp_length -1
            temp_char = temp.slice(temp_slice...temp_length)

                 if temp_char =~ /[^\s]/
                    temp_arr.push(temp_char)
                 end

                 if arr.include?(temp_char)
                    hash[temp_char] += +1
                 end

            end
        end
       

    }

p hash
end


dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

substrings("Howdy partner, sit down! How's it going?", dictionary)


# {"howdy"=>1, "how"=>2, "partner"=>1, "part"=>1, "sit"=>1, "i"=>3, "it"=>2, "down!"=>1, "own"=>1, "going"=>1, "go"=>1}

