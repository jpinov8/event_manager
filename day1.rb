def caesar_cipher(string, shift)
  result = ""

  string.each_char do |char|
    if char.match(/[a-zA-Z]/)
      base = char.ord < 91 ? 65 : 97
      result += ((char.ord - base + shift) % 26 + base).chr
    else
      result += char
    end
  end

  result
end

puts caesar_cipher("What a string!", 5)
