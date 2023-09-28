name = input("Type your name: ")
print("Welcome to this adventure!", name)

answer = input("You are on a dirt road, and it has come to end and you can go left or right. which way would you like to go? ").lower()

               
if answer == "left":
    answer = input("You come to a river, you can walk around it or swim accross? Type walk to walk around it and swim to swim accross: ")

    if answer == "swim":
        print("You swam accross and were eaten by an alligator. ")
    elif answer == "walk":
        print("You walk for many miles, ran out of water, and you lost the game. ")
    else:
        print('Not a valid option. You Lose.')

elif answer == "right":
    answer = input("You come to a bridge, it looks unstable, do you want to cross it, or head back? (cross/back) ")

    if answer == "back":
        print("You go back and there is a hungry wolf, he eats you up. You Lose. ")
    elif answer == "cross":
        answer = input("You walk accross the bridge and meet a stranger. Do you talk to them? (yes/no) ")
        

        if answer == "yes":
            print("You talk to the stranger and they give you the Ultium Gem. you WIN ")
            answer = input("You stumble upon a village and you can use the Ultium Gem to feed the village, Type feed to feed the village, or keep to keep the gem and use the riches for your self. ")

            if answer == "feed":
                    print("You feed the village and they are warmed with your deed, they make you there king and your Kingdom grows and eventually forms The Holy", name, "empire. ")
            elif answer == "keep":
                      print("You keep the gem for your self, but the gem turns dark, and your arms begin to turn to dust, and your whole body turns to dust. You Lose. (Tip: What ever goes around comes around. ")
            else:
                print('Not a valid option. You Lose.')

        elif answer == "no":
            print("You ignore the stranger, he gets mad and shoots you.")
        else:
            print('Not a valid option. You Lose.')

    else:
        print('Not a valid option. You Lose.')


else:
    print('Not a valid option. You Lose.')
