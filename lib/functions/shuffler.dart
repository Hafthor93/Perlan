import 'dart:math';

import 'package:BlackJack/functions/deck_of_cards.dart';

/*
Create a function called Shuffler which takes a List of integer as an input
and outputs a shuffled list of integers.

I.e, it should return a RANDOMIZED version of the list.
 */

List<int> Shuffler(List<int> theList){

  theList.shuffle();

  return theList;




}