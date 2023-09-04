/*:
**1.Please explain the difference between let and var .**
 
 let is going to declar a contant , which should not be changed or modified in the future
 if we are going to change it , use var instead to create a variable
 
 
**2. In Swift, we usually define a variable through the syntax as below:**
                              .var x: Int = 10.
We use the formula: 2 * radius * pi to calculate the circumference. Now, please define a variable pi and assign a value to it. You can refer to the syntax above while thinking about using var or let and which data type it should be.
*/

var radius: Double = 10
let pi: Double = 3.1415926

let circumference = radius * pi * 2

print(circumference)

/*
3. Declare two constants x and y of type Int then assign any value to them. After that, please calculate the average of x and y and store the result in a constant named average .
 */

let x: Int = 6
let y: Int = 4

let avarage: Int = (x + y)/2


//4. Following Q3, now we want to save the average in a record system, but the system doesn’t accept 65 but 65.0.
//● Please solve this problem so that we can put the average in the record system.
let x2: Double = 6
let y2: Double = 5

let avarage2: Double = (x2 + y2)/2

//● Please explain the difference between ( 10 / 3 ) and ( 10.0 / 3.0 ).

/*
 ( 10 / 3 ) is Int , which is not able to use like float , the anser is 3
 ( 10.0 / 3.0 ) is Double , which we can caculate the nuber after floating point.
    so the answer will be 3.3333333...
 
 */

//5. Declare two constants that values are 10 and 3 each, then please calculate the
//remainder and save the result in a constant named remainder .

let x3: Int = 10
let y3: Int = 3

let remainder = x3 % y3

//6. Swift is a very powerful language that can infer the data type for you ( Type Inference ) while we still need to know the basics well. Please change the following codes into the ones with the type annotation.
//Ex:.varx=10.=>.varx:Int=10.


var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Double = 86.8

//7. What is Type Inference in Swift?

/*
 swift will assigning the data type automatically if we did't appoint it while we declar
 */
 
//8.What is the issue about this piece of code?

//var phoneNumber = 0987654321
//print (phoneNumber)
//phoneNumber = "Hello world."

/*
 1. PhoneNumber is declared as Int ,which means it will be save as 987654321 (without 0)
 2. "Hello world" in a sting. we could not assing the value with diffenent type
 3. here is the final answer after debuging
 */

var phoneNumber: String = "0987654321"
 print (phoneNumber)
 phoneNumber = "Hello world."
 print (phoneNumber)



//9. Compound assignment operators are very useful when programming. Please declare a variable   with initial value 22000, and use unary plus operator
//adding 28000 to salary, so it will be 50000 after this process.

var salary = 22000
salary += 28000
print(salary)



//10. You should notice that ‘=’ has a different meaning in programming. In the real world, .‘=’ means equal while in programming, ‘=’ means assign . You simply put the right hand side data into the left hand side variable or constant.
//Now please write down the Equality operator in Swift.
 
/*
 "==" means the values are equal
*/
 

