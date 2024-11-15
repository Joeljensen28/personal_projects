using System.ComponentModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text.Json;
using System.Threading.Tasks;
using CsvHelper;
using System.Globalization;

public class ScrabbleSolver 
{
    private Dictionary<string, List<string>> wordsDict;

    public ScrabbleSolver()
    {
        wordsDict = new Dictionary<string, List<string>>();
        Task.Run(() => LoadWords()).Wait();
    }

    private async Task LoadWords() {
        const string dataset = "https://raw.githubusercontent.com/zeisler/scrabble/master/db/dictionary.csv";

        using var client = new HttpClient();
        // Obtain data
        var csv = await client.GetStringAsync(dataset);
        // Read the csv into one large string
        using var reader = new StringReader(csv);
        // Split the string on newspaces to get rows
        string[] words = reader.ReadToEnd().Split('\n');

        for (int i = 1; i < words.Length; i++) { // Loop through each word (note there is only one column in this csv)
            string word = words[i].ToLower().Trim(); // Normalize letters
            char[] charArray = word.ToCharArray();
            Array.Sort(charArray); // Turn the word into an array and sort it alphabetically

            string wordOrdered = new string(charArray); // Turn it back to a string

            if (!wordsDict.ContainsKey(wordOrdered)) { // Check if the key is already in the dictionary
                wordsDict[wordOrdered] = new List<string>(); // If not, initialize key
            }
            wordsDict[wordOrdered].Add(word); // Add word to the value in the dictionary
        }
    }

    public void FindAnswers(string lettersOnHand, ValueTuple<char, char, int>? boardRequisites = null) {
        if (boardRequisites is not null) {
            lettersOnHand += boardRequisites.Value.Item1; // Add both letters to the string
            lettersOnHand += boardRequisites.Value.Item2;

            string[] subsets = Substrings(lettersOnHand); // Obtain all valid substrings with new data

            foreach (string subset in subsets) {
                foreach (string word in wordsDict[subset]) { // Loop through each subset that has a key in the dictionary
                    int letterIndex1 = word.IndexOf(boardRequisites.Value.Item1); // Get the indices of the two spcified letters
                    int letterIndex2 = word.IndexOf(boardRequisites.Value.Item2);
                    
                    // Check that their distance is equal to the desired distance
                    if (letterIndex2 - letterIndex1 == boardRequisites.Value.Item3) {
                        Console.WriteLine(word);
                    }
                }
            }
        }

        else {
            string[] subsets = Substrings(lettersOnHand); // Obtain all valid substrings

            foreach (string subset in subsets) {
                foreach (string word in wordsDict[subset]) { // Print all words in scrabble dictionary with that key
                    Console.WriteLine(word);
                }
            }
        }
    }

    public string[] Substrings(string letters) {
        // Return a powerset of all sets excluding those of size 1

        // Find size of powerset
        int powerSetSize = (int)Math.Pow(2, letters.Length);
        // Initialize an array to hold all subsets
        var powerSet = new List<string>();

        // Loop through all possible subsets
        for (int i = 0; i < powerSetSize; i++) {
            // Initialize a new string to add substrings to
            string subset = "";
            // Loop through all the letters in the string
            for (int j = 0; j < letters.Length; j++) {
                if ((i & (1 << j)) > 0) { // Check if bit j has been inceremented yet
                    subset += letters[j]; // Add j to subset
                }
            }
            char[] chars = subset.ToCharArray();
            Array.Sort(chars);
            string sortedSubset = new string(chars);
            if (wordsDict.ContainsKey(sortedSubset)) { // If the subset has more than one letter, sort it to match the dictionary
                powerSet.Add(sortedSubset); // Then add to powerset
            }
        }
        return powerSet.ToArray();
    }
}