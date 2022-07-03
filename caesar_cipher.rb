
def cipher (message, key)
    result = ''
    message.each_char do |char|
        base = char.ord < 91 ? 65 : 97
        # Modifies Lowercase & Uppercase
        if char.ord.between?(65, 90) || char.ord.between?(97, 122)
            rotation = (((char.ord - base) + key) % 26) + base
            result += rotation.chr
        # Keeps spaces & punctuation
        else
            result += char
        end
    end
    return result
end

print 'Enter a phrase: '
phrase = gets
print 'Enter a key: '
key = gets.to_i


puts cipher(phrase, key)
