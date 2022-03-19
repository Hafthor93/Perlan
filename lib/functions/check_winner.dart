/*
Create a function that takes in FOUR inputs.

houseHand which is list of integers
playerHand which is a list of integers
currentBet which is an integer
currentBankRoll which is an integer

Google the rules of black jack and calculate if house or player won the match.
Subtract / Add bets where applicable and return the updated currentBankRoll
of the user, which should have decreased/increased based on if he won or not.
 */



import 'package:BlackJack/functions/functions.dart';
import 'money_grab.dart';


int CheckWinner(List<int> playerHand, List<int> houseHand, int currentBankRoll, int currentBet){

  int playerScore = CalculateScore(playerHand);
  int houseScore = CalculateScore(houseHand);
  int win = currentBet * 2;

  if(playerScore > 21){
    print('You busted! Too bad!');
    currentBankRoll -= currentBet;
  }else if(houseScore > 21){
    print('House busted! Lucky you! You win $win');
    currentBankRoll += win;
  }else if(playerScore > houseScore){
    print('You win! $win');
    currentBankRoll += currentBet;
  }else if(houseScore > playerScore) {
    print('House wins! Too bad!');
    currentBankRoll -= currentBet;
  } else if(playerScore == houseScore){
    print('You tied!');
  }
  return currentBankRoll;
}