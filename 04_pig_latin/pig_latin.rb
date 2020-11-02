#write your code here
def translate word
    vowels = ['a', 'e', 'i', 'o', 'u']
    words = word.split(" ")

    words.reduce("") {
        |sum, word|
        if vowels.include?(word[0])
            sum << "#{word}ay "
        else
            if (word[1] == 'q'&& word[2] == 'u')
                p 'hello'
                sum << "#{word[3..-1]}#{word[0]}#{word[1]}#{word[2]}ay"  
            elsif !vowels.include?(word[1]) && !vowels.include?(word[2])
                sum << "#{word[3..-1]}#{word[0..2]}ay "
            elsif !vowels.include?(word[1]) || (word[0] == 'q'&& word[1] == 'u')
                sum << "#{word[2..-1]}#{word[0..1]}ay "
            else
                sum << "#{word[1..-1]}#{word[0]}ay" 
            end
        end
    }.strip
end
