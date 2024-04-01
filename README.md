# Chakobsa Automaton

Automaton made in Prolog that can recognize words in Chakobsa.

## Regular Expression
b(a(z|kka|raka|lawa)|idriyaw)

## Run Word Verification:

Test the automaton by checking if it recognizes specific words using ?- verify_word('yourword')., replacing 'yourword' with the word you want to test.

 ## Valid words:
?- verify_word('baz').
?- verify_word('bakka').
?- verify_word('baraka').
?- verify_word('balawa').
?- verify_word('bidriyaw').


## Complex
 (O(n)), based on the length of the input word n. 


 
