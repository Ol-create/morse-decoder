def decode(code)
    charTranslator = {
      '.-' => 'A', '-...' => 'B', '-.-.' => 'C', '-..' => 'D',
      '.' => 'E', '..-.' => 'F', '--.' => 'G', '....' => 'H',
      '..' => 'I', '.---' => 'J', '-.-' => 'K', '.-..' => 'L',
      '--' => 'M', '-.' => 'N', '---' => 'O', '.--.' => 'P',
      '--.-' => 'Q', '.-.' => 'R', '...' => 'S', '-' => 'T',
      '..-' => 'U', '...-' => 'V', '.--' => 'W', '-..-' => 'X',
      '-.--' => 'Y', '--..' => 'Z'
    }
    charTranslator[code]
  end
  
  def decodeWord(decodeWord)
    decodeWord.split.map { |char| decode(char) }.join
  end
  
  def decoder(decodeSentence)
    decodeSentence.split('   ').map { |word| decodeWord(word) }.join(' ')
  end
  
  print decoder('.-   -... --- -..-   ..-. ..- .-.. .-..   --- ..-.   .-. ..- -... .. . ...')
  # Prints: "A BOX FULL OF RUBIES"