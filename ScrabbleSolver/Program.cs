// The letters you have on hand go here. This does NOT include any letters on the board that you want to match, UNLESS there is
// only one letter on the board you want to match, then you can put in here
string letters = "ireyeah";

// If there are mutliple letters on the board, put them in Item1 and Item2 (currently only allows for 2 letters at a time).
// Then put the distance between them in Item3. Distance between letters is treated like indicies of items in a list, so t
// would be index 0, " " would be index 1, and o would be index 2.
// For example, if the board looks like this:
//     c h i c k e n
//             i   o
//             t   o
//             e   d
//                 l
//                 e
// and you want to make a word that crosses "kite" and "noodle" along the "t" and "o", put t in Item1, o in Item2, and the
// number 2 in item 3.
var reqs = new ValueTuple<char, char, int>();
reqs.Item1 = 'e';
reqs.Item2 = 'p';
reqs.Item3 = 2;

var solver = new ScrabbleSolver();

solver.FindAnswers(letters, reqs);