def caesar_cipher(string, shift)
  shifted_chars = string.chars.map do |char|
    if char.match(/[a-z]/)
      base = "a".ord
      (((char.ord - base + shift) % 26) + base).chr
    elsif char.match(/[A-Z]/)
      base = "A".ord
      (((char.ord - base + shift) % 26) + base).chr
    else
      char
    end
  end

  shifted_chars.join
end

puts caesar_cipher("What a string!", 5)