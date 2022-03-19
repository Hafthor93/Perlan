import 'dart:io';

import 'score_function.dart';
import 'card_namer.dart';

/*
Create a function that prints the current "Status" of the match,
called ... uh... Status! Yes! That's it!

The function should take in two lists of integers, the playerHand and houseHand.

Using the score function and cardnamer, print info that informs the user
on what hand he has, his score and the hand of the house.

(Check out blackjack rules on what we actually get to know from the house
hand before showdown.)

 */
void Status(List<int> playerHand, List<int> houseHand){
  List<String> samansettSpil = [];
  List<String> samansettSpilDealer = [];
  for(int cards in playerHand) {
    CardNamer(cards);
   samansettSpil.add(CardNamer(cards).toString());
  }
  print(samansettSpil.join(","));
  print("Your score is ${CalculateScore(playerHand)}");
  for(int cards in houseHand) {
    samansettSpilDealer.add(CardNamer(cards).toString());
  }
  print(samansettSpilDealer.join(","));
  print("Dealers score is ${CalculateScore(houseHand)}");


for(int card in playerHand)
  {
    print('You have ${CardNamer(card)}');
  }

}