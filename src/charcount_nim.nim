import strutils

type CharCount = array[256, int]

const s = "aazauizuiufayuzfabzyeuofbzduyvbihiufauhi"

proc in_string(count: var CharCount, text: string) =
  for c in text:
    let index = int(c)
    inc(count[index])

proc print(count: CharCount) =
  for index, x in count.pairs:
    if x != 0:
      let current_char = char(index)
      echo "Character '$1' appears $2 times in the text." % [$current_char, $x]

var count: CharCount

count.in_string(s)
count.print()
