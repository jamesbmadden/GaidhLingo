import ColorizeSwift

let version = 0.1

func introMessage () {

  print("\("GàidhLingo".onGreen().white()) v\(version)".green())
  print("Made with ❤️ by Seumas Madden".italic().lightBlue())
  let link = "https://github.com/jamesbmadden/GaidhLingo".underline().cyan()
  print("View on GitHub: \(link)")
  print("\n\n")
  mainMenu()

}

/**
  The list of options for modes to use
*/
func mainMenu () {

  print("Pick a Mode:".bold())

  print("  \("\("V".underline())ocabulary ✏️".onRed())")
  print("    Translate words between Gàidhlig and English".red())

  print("  \("\("P".underline())hrases 🗣️".onYellow())")
  print("    Translate phrases between Gàidhlig and English".yellow())

  print("  \("\("G".underline())rammar 📄".onGreen())")
  print("    Multiple choice quiz on grammar rules in Gàidhlig".green())

  print("  \("\("D".underline())ictionary 📗".onCyan())")
  print("    Search Gàidhlig or English words and find their translations".cyan())

  print("  \("\("A".underline())bout 💻".onMagenta())")
  print("    Information about GàidhLingo, like sources, technology, and the changelog".magenta())

  print("")

  print("Type a letter (\("v".red())/\("p".yellow())/\("g".green())/\("d".cyan())/\("a".magenta())) to select a mode:")

  var mode = ""

  while true {
    mode = readLine() ?? ""

    // if a mode has been correctly selected, stop the loop
    if (mode == "v" || mode == "p" || mode == "g" || mode == "d" || mode == "a") {
      break
    } 
    // otherwise, tell the user to try again
    print("⚠️ Please enter v, p, g, d, or a.".foregroundColor(.orange1))
  }

  print("")
  // select the mode based on the entered character
  switch mode {
    case "v": 
      vocabularyMode()
    case "p":
      phrasesMode()
    case "g":
      grammarMode()
    case "d":
      dictionaryMode()
    case "a":
      aboutMode()
    default:
      print("Not sure how you got here!")
  }

}

introMessage()
