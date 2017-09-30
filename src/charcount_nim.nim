import strutils

type CharCount = array[256, int]

const s = "aazauizuiufayuzfabzyeuofbzduyvbihiufauhi"

proc char_count(text: string): CharCount =
  var count: CharCount
  for c in text:
    let index = int(c)
    inc(count[index])
  
  count

proc print_count(count: CharCount) =
  for index, x in count.pairs:
    if x != 0:
      let current_char = char(index)
      echo "Character '$1' appears $2 times in the text." % [$current_char, $x]

let count = char_count(s)
print_count(count)
