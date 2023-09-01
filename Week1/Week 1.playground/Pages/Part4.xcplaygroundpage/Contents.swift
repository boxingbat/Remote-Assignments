//1.Here is an array:
let lottoNumbers = [10, 9, 8, 7, 6, 5]
//Please use For-In loop and Range to print the last three members in the
//.lottoNumbers. array.

for i in 1...lottoNumbers.count where i > 3 {
    print(lottoNumbers[i-1])
}

//2.Please use a for-in loop to print the results as the images listed below respectively
//(through .lottoNumbers.)

//2-1 solution 1
var reversenum :[Int] = []
for num in lottoNumbers{
    reversenum.insert(num, at:0)
}
for num in reversenum{
    print(num)
}

//2-1 solution 2

//for num in lottoNumbers.reversed() {
//    print(num)
//}

//2-2
let count = lottoNumbers.count
for i in stride(from: 0, to: count, by: 2) {
    print(lottoNumbers[i])
}

//3. Please use a while loop to solve the Q2.
var i = 0
var j = 0
var k = 0

var reversenumWhile :[Int] = []

while i < lottoNumbers.count {
    reversenumWhile.insert(lottoNumbers[i], at: 0)
    i += 1
}
//print(reversenumWhile)
while j < lottoNumbers.count {
    print(reversenumWhile[j])
    j += 1
}

while k < count{
    let num = lottoNumbers[k]
    
    if num % 2 == 0 {
        print(num)
    }
    k += 1
}
        
//4. Please use a repeat-while loop to solve Q2.

var a = 0
repeat {
    print(reversenumWhile[a])
    a += 1
}while a < count

var b = 0

repeat {
    let num = lottoNumbers[b]
    
    if num % 2 == 0{
        print(num)
    }
    b += 1
}while b < count

//5. What are the differences between while and repeat-while?

/*
 while loop will test the contition at first , repeat while will test it at the bottom of the loop
 when we use repeat while , the loop will be processed one time at least
 
 */

//6. Declare a variable isRaining to record the weather. Please write a statement that if the weather is raining, print “It’s raining, I don’t want to work today.”, otherwise print “Although it’s sunny, I still don’t want to work today.”

var isRaining  :Bool = true

if isRaining{
    print("It’s raining, I don’t want to work today.")
}else {
    print("Although it’s sunny, I still don’t want to work today.")
}
//7. In a company, we might use numbers to represent job levels. Let’s make an example. We use 1 for the Member, 2 for Team Leader, 3 for Manager, and 4 for Director.
//Now, declare a variable named jobLevel and assign a number to it. If the jobLevel number is in our list, print the relative job title name; if not, just print “We don't have this job”. Please use the if-else statement and the switch statement to complete this requirement separately.
var jobLevel = 2

if jobLevel == 1 {
    print("member")
}else if jobLevel == 2 {
    print("Team Leader")
}else if jobLevel == 3 {
    print("Manger")
}else if jobLevel == 4 {
    print("Directpr")
}else {
    print("We don't have this job")
}
