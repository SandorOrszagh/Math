class viewController
{
  static func printQuestion(question:Question)
  {
    print("\(question.getQuestion().a) + \(question.getQuestion().b) = ?")
  }

  static func printStatusMessage(gameState:GameState)
  {
    switch gameState
    {
      case .start:        print("Start")
      case .wrongAnswer:  print("Wrong Answer :(")
      case .rightAnswer:  print("Right Answer :)))")
      case .quit:         print("Quit")
      //default:            print("Default")
    }
  }

  static func printGameScore(gameScore:Int)
  {
    print("Score: \(gameScore)")
  }
}