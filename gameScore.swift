class GameScore
{
  var gameScore: Int = 0
  func addScore(add:Int)
  {
    gameScore = gameScore+add
  }  

  func getGameScore() -> Int
  {
    return gameScore
  }
}