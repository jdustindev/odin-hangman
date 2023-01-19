dictionary = File.open("./google-10000-english-no-swears.txt").read.split("\n")
word_options = dictionary.filter do |word|
    word.length.between?(5, 12)
end

# TODO select random word between 5 and 12 chars

# TODO set up display (should be rerendered each turn) -
# 0/6 wrong
# letters used: X X X X ...

gameover = false

# TODO load game logic

until gameover
    # TODO quicksave logic
    # TODO turn logic
end
