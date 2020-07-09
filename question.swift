class Question
{
  private var elementA : Int = 0 ,elementB: Int = 0
  init(){}
  
  func newRandomQuestion()
  {
    elementA = Int.random(in:2...API.level)
    elementB = Int.random(in:2...API.level)
  }

  func getAnswer() -> Int
  {
    return elementA + elementB
  }

  func getQuestion() -> (a:Int,b:Int)
  {
    return (elementA,elementB)
  }

}