import random

user_wins = 0
computer_wins = 0

while True:
    user_input = ("Type rock, paper, scissors or Q to quit: ").lower()
    if user_input == "q":
        break
    if user_input not in ["rock", "paper", "scissors"]:
        print("Please type in a valid value.")
        continue
    random_number = random.randint(0, 2)
print("Good Bye!")
