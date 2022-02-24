$chars = {
    '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E',
    '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J',
    '-.-' => 'K', '.-..' => 'L', '--' => 'M', '-.' => 'N', '---' => 'O',
    '.--.' => 'P', '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
    '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X', '-.--' => 'Y',
    '--..' => 'Z'
}


def decode_char(char)
    $chars.each do |key,value|
        return value if key == char
    end 
end

def decode_word(coded_word)
   actual_word =''
   coded_word.split.each do |value|
     char = decode_char(value)
     actual_word+=char
   end
   return actual_word
end


puts decode_char('.-')
puts decode_word("-- -.--")

