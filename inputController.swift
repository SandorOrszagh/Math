class InputController
{
  static func getConsoleInt() -> (value:Int?,quit:Bool)
  {
    var input : Int? = nil
    var quit : Bool = false

    let inputString : String? = readLine()
    if let inputStringWrapped = inputString
    {
      switch inputStringWrapped.lowercased()
      {
        case "q": quit = true
        case "quit" : quit = true
        case "x": quit = true
        case "exit" : quit = true
        default : quit = false
      } 
    }
    input = Int(inputString!) ?? nil
    return (input,quit)
  }
}
