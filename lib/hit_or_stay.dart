import 'dart:io';

import 'functions/status.dart';
import 'functions/card_namer.dart';
import 'functions/deal_card.dart';
import 'functions/option_select.dart';
import 'functions/check_if_busted.dart';

/*
This is a complicated function,which accepts three inputs,

the current player hand (list of integers),
house hand (list of integers)
the current deck (list of integers)

It should be a infinite loop that asks the user if he
wants to draw a card or stay. If he chooses to stay,
then the loop should stop.

If he wants to draw a card, add a card to his hand,
tell him what card he drew and print the current information of the game.

If he busts after drawing this card, break the loop as well.
 */

void HitOrStay(List<int> playerHand, List<int> houseHand, List<int> deck){
  bool active = true;
  String statement = 'Would you like to hit or stay?\n';
  List<String> options = ['hit', 'stay'];

  int choice = OptionSelect(statement, options);

  while(active == true) {
    if (choice == 1) {
      DealCard(deck);
      print('You drew ${CardNamer(DealCard(deck))}');
      Status(playerHand, houseHand);
      if(CheckIfBusted(playerHand) == true)
        {
          active == false;
        }

    }
    else if(choice ==2)
      {
        active == false;
      }
  }


}