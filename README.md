# Card Games

## Problem

You are working for a company that is building various card games (e.g. Blackjack, Poker) for an online casino. Design the set of classes and interfaces that you would need to implement the functionality of a generic card game, including method signatures and member variables. Please state any assumptions you are making.

You do not need to create any concrete game implementations.

## About

I used ruby to create the structure for a card game suite. Any games that would be created would use the game class as a base class.
There are hard coded variables in the game class the specify max table size and hand size.
The notion of a dealer isn't in the project, as the role varies heavily game to game (often coded as a player, other times not.)

There are a small suite of rspecs for the class methods, which can run with the rspec command.
