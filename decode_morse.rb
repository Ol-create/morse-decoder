def decode(code)
  char_translator = {
                      '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
                      '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
                      '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
                      '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
                      '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
                      '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
                      '-.--' => 'Y', '--..' => 'Z'
                    }
  char_translator[code]
end

def decode_word(decode_word)
  decode_word.split.map { |char| decode(char) }.join
end

def decoder(decode_sentence)
  decode_sentence.split('   ').map { |word| decode_word(word) }.join(' ')
end

print decoder('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
# Prints: "A BOX FULL OF RUBIES"
