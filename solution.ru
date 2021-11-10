@abc_morse = { '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D', '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H', '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
'--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
'--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
'..-' => 'U', '...-' => 'v', '.--' => 'W', '-..-' => 'X',
'-.--' => 'Y', '--..' => 'Z' } 

def decode_char(morse_char)
    @abc_morse.each { |key, value| return value if key == morse_char }
end

def decode_word(morse_word)
    decoded_word = ""
    splited_word = morse_word.split
    splited_word.each_with_index do |code, index| 
        decoded_word += decode_char(splited_word[index].to_s).to_s
    end
    decoded_word
end
