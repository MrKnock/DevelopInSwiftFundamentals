/*:
 ## App Exercise - A Functioning App
 
 >These exercises reinforce Swift concepts in the context of a fitness tracking app.
 
 As you may have guessed, functions are key to making your app work. For example, in every exercise dealing with step count until now, you have simply assigned a number of steps to a `steps` variable. This isn't very realistic seeing as the number of steps you take increments one at a time and continues changing throughout the day.
 
 A reoccurring process like this is a perfect candidate for a function. Write a function called `incrementSteps` after the declaration of `steps` below that will increment `steps` by one and then print its value. Call the function multiple times and observe the printouts.
 */
var steps = 0

func incrementSteps1(_ step: inout Int) {
    let increment = 1
    step += increment
    print(step)
}
func incrementSteps(increment: Int = 1) {
    steps += increment
    print(steps)
}

incrementSteps1(&steps)
incrementSteps1(&steps)

/*:
 Similarly, if you want to regularly provide progress updates to your user, you can put your control flow statements that check on progress into a function. Write a function called `progressUpdate` after the declaration of `goal` below. The function should print "You're off to a good start." if `steps` is less than 10% of `goal`, "You're almost halfway there!" if `steps` is less than half of `goal`, "You're over halfway there!" if `steps` is less than 90% of `goal`, "You're almost there!" if `steps` is less than `goal`, and "You beat your goal!" otherwise. Call the function and observe the printout. Remember, you can convert numbers using the appropriate Int or Double initializer.
 */
let goal = 10000

func progressUpdate() {
    if steps < ((goal/100) * 10) {
        print("You're off to a good start")
    } else if (steps >= ((goal/100) * 10)) && ((steps < ((goal/100) * 50))) {
        print("You're almost halfway there!")
    } else if (steps > ((goal/100) * 50)) && (steps < ((goal/100) * 90)){
        print("You're over halfway there!")
    } else if steps < goal {
        print("You are almost there!")
    } else {
        print("You beat your goal")
    }
}

progressUpdate()
//: [Previous](@previous)  |  page 2 of 6  |  [Next: Exercise - Parameters and Argument Labels](@next)
