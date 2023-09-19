
 
// 1. What is a closure ? How to execute a closure?

/*
 Closure is a function without finction name
 nest fuction is also a closure , which is set inside of another function
 we can also pass a function as parameters into another founction , by transfer it to closure , like the sample below
 */

func Add (number1: Int, number2: Int) -> Int {
    return number1 + number2
}

func printNum (function: (Int, Int) -> Int, a: Int, b: Int){
    print("\(function(a,b))")
}

printNum(function: Add(number1:number2:), a: 2, b: 3)

/*
 
 */
// 2. Please declare a closure whose input type is Int, output type is Bool. The functionality of
// this closure is to verify if the input is odd or not. Return true if it’s odd and vice versa.

let findOdd: (Int) -> Bool = {
    return $0 % 2 != 0
}
findOdd(7)
findOdd(4)
// 3. Please complete the following function that prints a triangle made of asterisks.
 

// Example usage:
//printTriangle(layers: 5)





func printTriangle(layers: Int) {
    // TODO: print a triangle
    for i in 1...layers {
        for _ in 1...i {
            print("*", terminator: "")//避免換行
        }; print()//等達到需要的星號數量再換行
    }
}
//For example, here’s what the output of printTriangle(Layers:5 )  should be:
//*
//**
//***
//****
//*****
printTriangle(layers: 5)
