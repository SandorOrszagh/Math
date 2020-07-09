import Foundation

class GameController
{
  //var gameScore: Int = 0
  //var gameState :GameState = GameState.start
  var question : Question = Question()
  var gameStateController = GameStateController()

  private static var sharedGameController: GameController = 
  {
    let gameController = GameController()
    return gameController
  }()

  private init() 
  {}

  class func shared() -> GameController 
  {
    return sharedGameController
  }
    /*......*/
  func getInfo() -> String
  {
    return "GameController"
  }

  
  func gameStep()
  {
      if gameStateController.gameState != GameState.wrongAnswer { question.newRandomQuestion() }
      viewController.printQuestion(question: question)
      let inputComplex = InputController.getConsoleInt()

      if let value = inputComplex.value
      {
        if value == question.getAnswer()
        {
          gameStateController.gameState = GameState.rightAnswer

        } else
        {
          gameStateController.gameState = GameState.wrongAnswer
        }

      } else
      { gameStateController.gameState = GameState.wrongAnswer}
    
      if inputComplex.quit { gameStateController.gameState = GameState.quit}
      gameStateController.gameStateMachine()
  }

  func gameLoop()
  {
    while gameStateController.gameState != GameState.quit
    {
      gameStep()
    }
  }
} //GameController End;