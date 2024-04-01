%initial_state
state(q0).

move(q0, b, q1).
move(q1, a, q2).
move(q2, z, q3).

move(q2, k, k1).
move(k1, k, k2).
move(k2, a, q3).

move(k1, l, l1).
move(l1, a, l2).
move(l2, w, l3).
move(l3, a, q3).

move(q2, r, r1).
move(r1, a, r2).
move(r2, k, r3).
move(r3, a, q3).

move(q1, i, i1).
move(i1, d, i2).
move(i2, r, i3).
move(i3, i, i4).
move(i4, y, i5).
move(i5, a, i6).
move(i6, w, q3).

%final_states
final_state(q3).


%It converts the word into a list of characters and starts the verification process from the initial state.
verify_word(Word) :-
    string_chars(Word, Chars),
    verify_chars(Chars, q0).
    
%Checks if the list of characters is empty and the current state is a final state.
verify_chars([], CurrentState) :-
    final_state(CurrentState).

%Processes each character in the input word recursively.
verify_chars([CurrentChar|RemainingChars], CurrentState) :-
    move(CurrentState, CurrentChar, NextState),
    verify_chars(RemainingChars, NextState).

