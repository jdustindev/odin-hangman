dictionary = File.open("./google-10000-english-no-swears.txt").read.split("\n")
word_options = dictionary.filter do |word|
    word.length.between?(5, 12)
end

# Pick a random word
@word = word_options.sample

# TODO set up display (should be rerendered each turn) -
# 0/6 wrong
# letters used: X X X X ...
@num_wrong_guesses = 0
@max_wrong_guesses = 6
@wrong_guesses = []
@correct_guesses = "_" * @word.length

gameover = false

def render
    system("clear") || system("cls")
    puts @correct_guesses
    puts "Wrong: #{@num_wrong_guesses}/#{@max_wrong_guesses}"
    puts "Letters used: #{@wrong_guesses.join(", ")}"
end

def get_guess
    print "Enter a letter: "
    gets.chomp
end

def correct?(guess)
    @word.include? guess
end

def play_round
    puts @word  # TODO REMOVE THIS when done testing
    guess = get_guess
    
    if correct? guess
        # TODO replace "_"'s with correct letters
        @word.each_char.with_index do |letter, index|
            if letter == guess
                @correct_guesses[index] = guess
            end
        end
    end
end

# TODO load game logic

until gameover
    render
    play_round
    # TODO quicksave logic
    # TODO turn logic
end
