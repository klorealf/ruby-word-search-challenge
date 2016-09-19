# Word Search

## Summary
In this challenge we're going to write a search algorithm that will tell us whether or not a word can be found in a [word search puzzle][wikipedia word search].  The specific rules that we need to follow will be detailed in the release.


### Puzzle Data Structure
```ruby
puzzle = [
  ["a", "k", "f", "o", "x", "e", "s"], 
  ["s", "o", "a", "w", "a", "h", "p"], 
  ["i", "t", "c", "k", "e", "t", "n"],
  ["o", "t", "s", "d", "h", "o", "h"],
  ["s", "e", "x", "g", "s", "t", "a"],
  ["u", "r", "p", "i", "w", "e", "u"],
  ["z", "s", "b", "n", "u", "i", "r"]
]
```
*Figure 1*. Representing a word search puzzle as a nested array

We'll be representing our word search puzzles as nested arrays.  The puzzle as a whole will be represented by the outer array.  Each row in the puzzle will be represented by one of the inner arrays.  (see Figure 1)


## Releases
### Release 0:  Finding Words in the Puzzle
![finding snaking words](readme-assets/snaking-word.gif)  
*Figure 2*.  Finding the word *nighthawks* with letters that snake through the puzzle.

We're going to write a method named `word_search_include?`.  This method accepts two arguments:  the word to find and the cross word puzzle.  It returns `true` or `false` depending on whether the word is found in the puzzle.  As seen in Figure 2, the the word's letters can snake around the board vertically, horizontally, and diagonally.

As always, we'll need to document the behavior of our method with tests.


**Rules**  
- Words can snake horizontally, vertically, and diagonally.  
- Each letter in the puzzle can be used only once per word. 


### Release 2:  Build a User Interface
In the `runner.rb` file, let's write a script that displays a word search puzzle to users and asks them to input words for which to search.  After each word is input, we should report whether or not the word could be found in the puzzle.

If the word is found, can we visually show the word to users?


## Conclusion
This search algorithm is one of the more difficult challenges with which we're presented during Dev Bootcamp.  How do we feel about it?  Did it go well?  Where did we struggle?

How was our testing approach?  Did we start with simpler words to find?  Maybe a one-letter word, followed by a two letter and so on?  


[wikipedia word search]: https://en.wikipedia.org/wiki/Word_search