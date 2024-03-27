import ArgumentParser

@main
struct Random: ParsableCommand {
  @Flag(name: .short, help: "Should the output be an integer?")
  var isInt = false

  @Flag(name: .shortAndLong, help: "Flip a coin instead of generating a number.")
  var coin = false

  @Argument(help: "The minimum value for the random number generator.")
  var min: Double = 0

  @Argument(help: "The maximum value for the random number generator.")
  var max: Double = 1

  mutating func run() throws {
  	if coin {
   		if Int.random(in: 0...1) == 1 {
     		print("Heads")
        } else {
    		print("Tails")
      	}
       	return
    }

    if min > max {
      print("Minimum value is greater than maximum value")
      return
    }

    if isInt {
      print(Int.random(in: Int(min)...Int(max)))
    } else {
      print(Double.random(in: min...max))
    }
  }
}
