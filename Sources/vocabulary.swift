import ColorizeSwift

let questionsPerTest = 20

// the vocabulary mode
func vocabularyMode () {

  print("Vocabulary ✏️".onRed())

  print("Practicing level 1 - more levels will be added soon!\n")

  // words must be loaded and formatted for the test
  let questions = makeQuestions(level: level1, count: questionsPerTest)

  // finally, ask the questions!
  askQuestions(questions: questions)

}

func makeQuestions (level: [String: String], count: Int) -> [[String]] {

  // list of questions for use in the quiz
  var questions: [[String]] = []
  // the indices that have already been used so questions aren't repeated
  var usedKeys: [String] = [""]
  // a list of gaelic words to generate questions from
  let vocabKeys = level.keys

  // generate count amount of questions
  for _ in 0..<count {

    var word = ""

    // find a word that hasn't been used yet
    while usedKeys.contains(word) {
      word = vocabKeys.randomElement() ?? ""
    }

    // add the word in [gaelic, english] format
    questions.append([word, level[word] ?? ""])
    usedKeys.append(word)

  }

  return questions

}

/**
  Loop through all the questions in a list and ask them, along with computing a score.
*/
func askQuestions (questions: [[String]]) {

  var score = 0

  for i in 0..<questions.count {

    print("\n\("Question \(i + 1):".onCyan()) \(questions[i][0])")

    let answer = readLine() ?? ""

    if answer == questions[i][1] {
      score += 1
      print(questions[i][1].green())
    } else {
      print(questions[i][1].red())
    }

  }

  print("")
  let percent = Int(Double(score) / Double(questions.count) * 100.0)
  print("You scored \(percent)% (\(score)/\(questions.count))".cyan())

}