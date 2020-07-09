 enum GameState
{
  case start,rightAnswer,wrongAnswer,quit
}

class GameStateController
{
  var gameState = GameState.start
  var gameScore : GameScore = GameScore()

  func gameStateMachine()
  {
    switch gameState
    {
      case .start: start()
      case .rightAnswer: rightAnswer()
      case .wrongAnswer: wrongAnswer()
      case .quit: quit()
      //default:
    }
  }

  func start()
  {}

  func rightAnswer()
  {
    gameScore.addScore(add:1)
    viewController.printStatusMessage(gameState:self.gameState)
  }

  func wrongAnswer()
  {
    viewController.printStatusMessage(gameState:self.gameState)
  }

  func quit()
  {}
}