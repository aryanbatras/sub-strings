
def substrings(words, arr)

temp = 0
hash = Hash.new(0)

temp_arr = []
temp_char = ''
temp_length = ''


words = words.split(/[\s]/)


    words.each {
    |word|
    if arr.include?(word)

       temp = word
        length = temp.length

        hash[temp] += +1
        
        




        temp_length = length
        length.times do
            temp_arr = []
            temp_length -= 1
            temp_char = temp.slice(0...temp_length)
          
            if temp_char =~ /[^\s]/
                temp_arr.push(temp_char)
                
             end
             
             if arr.include?(temp_char)
                hash[temp_char] += +1
                hash
               end
           
        end


        temp_slice = 0
        temp_length = length
        length.times do
            temp_arr = []
            temp_slice += 1
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








array = ["below", "low", "going", "go"]


substrings("below going low below hello go low low going going going sir", array)