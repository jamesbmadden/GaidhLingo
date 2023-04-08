import ColorizeSwift

func aboutMode () {

  print("About 💻".onMagenta())
  print("GàidhLingo is developed by James Madden as a tool to help him learn both Gaelic and programming in Swift.")
  print("")

  print("Sources 📗".onGreen())
  print("GàidhLingo uses words and phrases taught on the SpeakGaelic website (\("https://speakgaelic.scot".underline().cyan()))")
  print("and the book \("Scottish Gaelic in Twelve Weeks".italic()) by Roibeard Ó Maolalaigh.")
  print("")

  print("Changelog 🚧".onCyan())
  print("Version 0.1".blue())
  print(" • Adds the vocabulary feature with one level")
  print(" • Implements the about page")

  print("Version 0.0".magenta())
  print(" • Adds the title screen. All other features are to be implemented.")

}