//
//  main.swift
//  Strings
//
//  Created by Ian Bailey on 10/9/18.
//  Copyright © 2018 Ian Bailey. All rights reserved.
//

import Foundation

//Concatination
let firstName = "John"
let lastName = "Appleseed"
//Use a variable full name to cancatenate first name and second name
let fullName = firstName + " " + lastName
print("the person's fullname is \(fullName)")


//String interpolation
let year = 2018
//Use string interpolation to print out the year 2018
print("the current year is \(year)")


//e.g string literal
let name = "Eli"

//Initialization - set a default value
var date = "October 9th, 2018"  //string literal
print(date)

//String Formatting
let someString = String(format: ".2f", 10.345)
print("using string formating to print 2 decimal places \(someString)")

//Test for empty string
let emptyString = ""
//Using the ternary operator ?:
emptyString.isEmpty ? print("is empty") : print("Not Empty")

//Alternative using if/else
if emptyString.isEmpty {
    print ("Is empty - using if/else")
} else {
    print ("Not empty - using if/else")
}


//comparing strings
let str1 = "Pursuit"
let str2 = "C4Q"
str1 == str2 ? print("You're in both cohorts") : print("Pursuit to the dream")


//String mutability
let homePlanet = "earth" //Immutable - cannot change

var codingExperience = 0 //Mutable - means it can change
codingExperience = 10

let stringExperience = String(codingExperience)
print("I have \(stringExperience) is coding")

//Value type
let movie = "Toy Story"
var nextMovie = movie //mutable
nextMovie += " 2" //if nextMovie was a (class type) it would alter movie's value
print ("movie is \(movie) and nextMovie is \(nextMovie)")

//Interacting through a string
let iOS = "iOS is not awesome!"
for letter in iOS { // using a for loop to print out every chacter of iOS string
    print(letter, terminator:"|") //does not default to a new line
}
print(" ")
print("+++++++++++++++++++++++++++++++++++++++++++")
//count characters in a string
//count is a property on a collection type - counts number of items in collection
print("there are \(iOS.count) characters in the string" )

//drop the last character in a string
print ("dropping the last character \(iOS.dropLast())")

//Reverse string
let greeting = "Hello"
var reverse = String(greeting.reversed())
print("reverse greeting is \(reverse)")


//Check of a string is a palindrome
let testPalindromeStr = "racecar"
let isPalindrome = String(testPalindromeStr.reversed())
if testPalindromeStr == isPalindrome {
    print("is a palindrome")
}else{
    print("Not a palindrome")
}

// Comparing Unicode scaler vs string literal
let unicodeSpace = "\u{20}"
let stringLiteralSpace = " "
unicodeSpace == stringLiteralSpace ? print("equal") : print("NOT equal")

// U+1f40D is a snake
let snake = "\u{1f40D} \u{1f61C}"
for _ in 0...10 {
    print(snake,terminator:"")
}
