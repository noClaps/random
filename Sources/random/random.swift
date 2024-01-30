// The Swift Programming Language
// https://docs.swift.org/swift-book

import ArgumentParser

@main
struct Random: ParsableCommand {
    @Flag(name: .short, help: "Should the output be an integer?")
    var isInt = false

    @Argument(help: "The minimum value for the random number generator.")
    var min: Double = 0

    @Argument(help: "The maximum value for the random number generator.")
    var max: Double = 1

    mutating func run() {
        if (isInt) {
            print(Int.random(in: Int(min)...Int(max)))
        } else {
            print(Double.random(in: min...max))
        }
    }
}
