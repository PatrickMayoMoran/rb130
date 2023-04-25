def danish(str)
  str.sub(/\b(apple|blueberry|cherry)\b/, 'danish')
end

p danish('An apple a day keeps the doctor away')
# -> 'An p danish a day keeps the doctor away'

p danish('My favorite is blueberry pie')
# -> 'My favorite is p danish pie'

p danish('The cherry of my eye')
# -> 'The p danish of my eye'

p danish('apple. cherry. blueberry.')
# -> 'p danish. cherry. blueberry.'

p danish('I love pineapple')
# -> 'I love pineapple'
