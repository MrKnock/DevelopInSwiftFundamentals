/*:
 ## Exercise - Create Functions
 
 Write a function called `introduceMyself` that prints a brief introduction of yourself. Call the function and observe the printout.
 */
func sayHello(firstName: String) {
    print("Hello \(firstName)")
}

sayHello(firstName: "Bill")
/*:
 Write a function called `magicEightBall` that generates a random number and then uses either a switch statement or if-else-if statements to print different responses based on the random number generated. `let randomNum = Int.random(in: 0...4)` will generate a random number from 0 to 4, after which you can print different phrases corresponding to the number generated. Call the function multiple times and observe the different printouts.
 */


func magicEightBall (rand: Int) {
    switch rand {
    case 0:
        print("Don't count on it")
    case 1:
        print("Signs Point to yes")
    case 2:
        print("Without a doubt")
    case 3:
        print("Better not tell you now")
    case 4:
        print("Outlook not so good")
    default:
        print("Ooops the eight ball is broken")
    }
}

magicEightBall(rand: Int.random(in: 0...4))
magicEightBall(rand: Int.random(in: 0...4))
magicEightBall(rand: Int.random(in: 0...4))
magicEightBall(rand: Int.random(in: 0...4))

//: page 1 of 6  |  [Next: App Exercise - A Functioning App](@next)
