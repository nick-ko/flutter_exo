import 'dart:io';

main(List<String> args) {
  stdout.writeln("ENTREZ UNE PHRASE SVP ?");
  String sentence=stdin.readLineSync();

  print(WordCount().countWords(sentence));
}

class WordCount {
  Map<String, int> countWords(String sentence) {
    var words = new RegExp(r"\w+(\'\w+)?");

    return words
        .allMatches(sentence)
        .map((item) => item.group(0).toLowerCase())
        .fold(new Map<String, int>(),
            (Map<String, int> wordCounts, String word) {
      if (wordCounts.containsKey(word)) {
        wordCounts[word] += 1;
      } else {
        wordCounts[word] = 1;
      }
      return wordCounts;
    });
    // ugly dartfmt tool
  }
}