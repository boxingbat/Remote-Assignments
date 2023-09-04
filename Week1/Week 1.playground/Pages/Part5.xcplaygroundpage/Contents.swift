//1. What are the return types in the following statements?
//func birthday( ) -> String {}
//func payment( ) -> Double { }

/*
1. String
2. Double
*/


//2. Please declare a function named multiply with two arguments a and b . This function won’t return any value and will only print out the result of a * b . Be noticed that we want to give the argument b a default value of 10.

multiply(2)
multiply(2,3)

func multiply (_ a:Int, _ b:Int=10) {
    let result = a * b
    print(result)
}



//3. What’s the difference between argument label and parameter name in a function?
/*
 parameter name is like internal name which be saved in the function
 argument name is showed as outside name while you call the function
 when we need to have different terms for argument label and parameter name ,
 declar argument first, then put parameter name right behind it
 */

//4. Please declare a function named .name. as a parameter name. This you call the function greet like this:
//greet(person: "Luke")
//It will return the string: “Hello, Luke”.
//with person as an argument label and function will return a String. For example, if you can you call the function greet like this:
//greet(person: "Luke")
//It will return the string: “Hello, Luke”.

func greet (person name: String) -> String {
    return "Hello, \(name)"
}

let greeting = greet(person: "Luke")
print(greeting)
