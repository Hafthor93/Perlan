import 'dart:io';

/*
Create two functions called

PlaceBet(int currentBank)
- Asks the user how much they want to bet this round, return the amount.
- Solve edge cases when the bet is larger than current bank or if
the user chooses to bet 0.

BuyIn
- Ask the user for how much they want to buy in to black jack

These methods should return an integer.

BONUS POINTS:
Can you design the function such that it will ask the user again if
he doesn't input a integer?
 */

int PlaceBet(int bankRoll){
  int bet = 0;

  while(true)
    {
      print('How much would you like to bet?');
      bet = int.tryParse(stdin.readLineSync());

      if(bet == null)
      {
        print('You have done something wrong');
      }
      else if(bet > bankRoll)
        {
          print('You don\'t have that much money..');
        }
      else if(bet <= 0)
        {
          print('You can\'t bet nothing..');
        }
      else
      {
        break;
      }

    }
    return bet;



}

int BuyIn(){

  int buyInMoney = 0;

  while(true)
    {
      print('How much would you like to buy in for?');
      buyInMoney = int.tryParse(stdin.readLineSync());

      if(buyInMoney == null)
        {
          print('You have done something wrong');
        }
      else
        {
          break;
        }

    }
    return buyInMoney;

}