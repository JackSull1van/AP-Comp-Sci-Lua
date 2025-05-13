
local guessNum = 0
local num = math.random(1,10)
local guessed = false
local guess = nil
while not guessed and guessNum < 3 do
    print("What is your guess?")
    guess = tonumber(io.read())
    if guess == num then
        guessed = true
        print("Correct! You win!")
    else 
        guessNum = guessNum +1
        print("Incorrect")
        print("You have", (3 - guessNum), "guess's remaining")
    end
    
end
if not guessed then
    print("You lose :(")
    print("The Number was", num)
end