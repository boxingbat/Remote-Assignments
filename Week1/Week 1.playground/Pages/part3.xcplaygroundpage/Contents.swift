//1. Please initialize an empty array with String data type and assign it to a variable named .myFriends .
var myfriends : [String] = []

//2. According to Q1, now I have three friends, ‘Ian’, ‘Bomi’, and ‘Kevin’. Please help me to add their name into myFriends array at once.
myfriends += ["Ian", "bomi", "Kevin"]

//3. Oops, I forgot to add ‘Michael’ who is one of my best friends, please help me to add Michael to the end of myFriends array.

myfriends.append("michael")

//4. Because I usually hang out with Kevin, please move Kevin to the beginning of the .myFriends array.
myfriends.remove(at: 2)
myfriends.insert("Kevin", at: 0)

//5. Use for...in to print all the friends in myFriends array.

for friend in myfriends {
    print(friend)
}

//6. Now I want to know who is at index 5 in the myFriends array, try to find the answer
//for me. Please explain how you get the answer and why the answer is it.

var answer2 = myfriends[2]
//let answer5 = myfriend[5]
//print(answer5)
// index is out of range

//7. How to get the first element in an array?
var answer1 = myfriends[0]

//8. How to get the last element in an array?

var howManyFriends :Int = myfriends.count
var lastfriend = myfriends[howManyFriends-1]
print(lastfriend)

//9. Please initialize a Dictionary with keys of type String, value of type Int, and assign it to a variable named myCountryNumber.
var myCountrynumber :[String:Int] = [:]
//10. Please add three values 1, 44, 81 to myCountryNumber for keys ‘US’, ‘GB’, ‘JP’ respectively.
myCountrynumber["US"] = 1
myCountrynumber["GB"] = 44
myCountrynumber["JP"] = 81
//11. Change the value of ‘GB’ from 44 to 0.
myCountrynumber["GB"] = 0
//12. How to declare an empty dictionary?

//var emptydictionary :[Keytype:ValueType] = [:]

//13. How to remove a key-value pair in a dictionary?
myCountrynumber.removeValue(forKey: "GB")
print(myCountrynumber)
