dictionary = File.open("./google-10000-english-no-swears.txt").read.split("\n")
word_options = dictionary.filter do |word|
    word.length.between?(5, 12)
end

# Pick a random word
word = word_options.sample

# TODO set up display (should be rerendered each turn) -
# 0/6 wrong
# letters used: X X X X ...
@num_wrong_guesses = 0
@max_wrong_guesses = 6
@wrong_guesses = []

def render
    system("clear") || system("cls")
    puts "Wrong: #{@num_wrong_guesses}/#{@max_wrong_guesses}"
    puts "Letters used: #{@wrong_guesses.join(", ")}"
end

gameover = false

# TODO load game logic

until gameover
    render
    gets    # pause game -- this is here to stop loop until we add more logic
    # TODO quicksave logic
    # TODO turn logic
end
