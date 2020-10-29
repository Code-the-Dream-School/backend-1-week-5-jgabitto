#write your code here
require 'set'

def echo says
    says
end

def shout says
    says.upcase!
end

def repeat says, num=2
    value = "#{says} " * num
    value.strip!
end

def start_of_word word, num
    word.slice!(0..num - 1)
end

def first_word word
    word.split(' ')[0]
end

def titleize sentence
    little_words = Set['and', 'the', 'or', 'but', 'of', 'nor', 'for', 'over']
    words = sentence.split(' ')
    words.each.with_index.reduce('') do |sum, (word, index)|
        if (little_words.include?(word)) && index != 0
            sum + word + ' '
        else
            sum + word.capitalize + ' '
        end
    end.strip
end