def upper?(char)
  char.upcase == char
end

def adjust_char(char, base)
  remainder = (char.ord + 13) % base
  remainder -= 26 if remainder > 25
  (remainder + base).chr
end

def adjust_word(word)
  lower_base = 97
  upper_base = 65

  word.chars.map do |c|
    if c.match(/[a-zA-Z]/)
      if upper?(c)
        adjust_char(c, upper_base)
      else
        adjust_char(c, lower_base)
      end
    else
      c
    end
  end.join
end

def rot_13(str)
  words = str.split
  words.map do |word|
    adjust_word(word)
  end.join(' ')
end

p rot_13 'Nqn Ybirynpr'
p rot_13 'Tenpr Ubccre'
p rot_13 'Nqryr Tbyqfgvar'
p rot_13 'Nyna Ghevat'
p rot_13 'Puneyrf Onoontr'
p rot_13 'Noqhyynu Zhunzznq ova Zhfn ny-Xujnevmzv'
p rot_13 'Wbua Ngnanfbss'
p rot_13 'Ybvf Unvog'
p rot_13 'Pynhqr Funaaba'
p rot_13 'Fgrir Wbof'
p rot_13 'Ovyy Tngrf'
p rot_13 'Gvz Orearef-Yrr'
p rot_13 'Fgrir Jbmavnx'
p rot_13 'Xbaenq Mhfr'
p rot_13 'Fve Nagbal Ubner'
p rot_13 'Zneiva Zvafxl'
p rot_13 'Lhxvuveb Zngfhzbgb'
p rot_13 'Unllvz Fybavzfxv'
p rot_13 'Tregehqr Oynapu'
