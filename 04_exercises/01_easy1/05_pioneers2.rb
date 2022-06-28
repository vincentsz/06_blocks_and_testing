# The following list contains the names of individuals who are pioneers in the field of computing or that have had a significant influence on the field. 
# The names are in an encrypted form, though, using a simple (and incredibly weak) form of encryption called Rot13.
ALPHABET = ("a".."z").to_a
SIZE =  ALPHABET.size
ROT = 13

def decipher(names)
  result = names.map do |name|
    rot_13(name.downcase).capitalize
  end
  puts result
end

def rot_13(name)
  name.chars.map do |char|
    if ALPHABET.include?(char)
      ALPHABET[(ALPHABET.index(char)+ROT)%SIZE]
    else
      char
    end
  end.join
end



names  = [
  'Nqn Ybirynpr',
  'Tenpr Ubccre',
  'Nqryr Tbyqfgvar',
  'Nyna Ghevat',
  'Puneyrf Onoontr',
  'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv',
  'Wbua Ngnanfbss',
  'Ybvf Unvog',
  'Pynhqr Funaaba',
  'Fgrir Wbof',
  'Ovyy Tngrf',
  'Gvz Orearef-Yrr',
  'Fgrir Jbmavnx',
  'Xbaenq Mhfr',
  'Fve Nagbal Ubner',
  'Zneiva Zvafxl',
  'Lhxvuveb Zngfhzbgb',
  'Unllvz Fybavzfxv',
  'Tregehqr Oynapu'
].freeze

p decipher(names)


# Write a program that deciphers and prints each of these names .