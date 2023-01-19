dictionary = File.open("./google-10000-english-no-swears.txt").read.split("\n")
word_options = dictionary.filter do |word|
    word.length.between?(5, 12)
end

# Pick a random word
word = word_options.sample

# TODO set up display (should be rerendered each turn) -
# 0/6 wrong
# letters used: X X X X ...

gameover = false

# TODO load game logic

until gameover
    # TODO quicksave logic
    # TODO turn logic
end
