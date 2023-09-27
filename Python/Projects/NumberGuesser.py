import random
# r = random.randrange(-5, 11)# doesn't include 11
# r = random.randint(-5, 11) # includes 11

top_of_range = input("type a number: ")
if top_of_range.isdigit():
    top_of_range = int(top_of_range)
    if top_of_range <= 0:
        print("Please type a number greater than 0 next time.")
        quit()
else:
    print("Please type a number next time.")
    quit()


random_number = random.randint(0, top_of_range)
# print(random_number)
guesses = 0


while True:
    guesses += 1
    user_guess = input("Make a guess: ")
    if user_guess.isdigit():
        user_guess = int(user_guess)
    else:
        print("Please type a number next time.")
        continue
    if user_guess == random_number:
        print("You got it!")
    else:
        print("you got it wrong")
print("In ", guesses, " guesses.")