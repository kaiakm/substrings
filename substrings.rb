dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

def substrings(string, array)
    frequencies = Hash.new(0)
    downcased_string = string.downcase

    downcased_string.split.each do |word|
        array.each do |substring|
            downcased_substring = substring.downcase
            count = word.scan(downcased_substring).length
            frequencies[substring] += count if count > 0
        end
    end

    frequencies
end

p substrings("below", dictionary)
p substrings("Howdy partner, sit down! How's it going?", dictionary)