print("Welcome The Mwadz Quiz!")

playing = input("Want to play.y/n? ")
if playing.lower() != "y":
    quit()
print("Okay! Let's play :) ")
score = 0

answer = input("What is her favourite food? ")
if answer.lower() == "nduma":
    print("correct!")
    score +=1
else:
    print("false!")

answer = input("What is her favourite animal? ")
if answer.lower() == "cat":
    print("correct!")
    score +=1
else:
    print("false!")

answer = input("How old is she? ")
if answer == "23":
    print("correct!")
    score += 1
else:
    print("false!")

answer = input("What instrument does she play? ")
if answer.lower() == "guitar":
    print("correct!")
    score += 1
else:
    print("false!")

answer = input("Who is her favourite GOT character? ")
if answer.lower() == "sansa":
    print("correct!")
    score += 1
else:
    print("false!")

answer = input("Who is her favourite Vikings character? ")
if answer.lower() == "floki":
    print("correct!")
    score += 1
else:
    print("false!")

print("You got "+str(round((score/6)*100))+"%")