///Tesztek//////////////////////////////////////////////
//let tests = Test()
//tests.iWantToSeeThePassedTestsAlso(true)
//tests.addTests()
//tests.RunAllTests()
///Tesztek vége/////////////////////////////////////////

//Create Game Controller
var gameController: GameController = GameController.shared() 

print("************Start the Game****************")
gameController.gameLoop()
print("************Stop the Game*****************")
