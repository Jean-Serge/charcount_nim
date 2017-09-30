import strutils

type CharCount = array[256, int]

const s = "aazauizuiufayuzfabzyeuofbzduyvbihiufauhi"

var count: CharCount

for c in s:
  inc(count[cast[int](c)])

for index, x in count.pairs:
  if x != 0:
    let current_char = cast[char](index)
    echo "Character '$1' appears $2 times in the text." % [$current_char, $x]
