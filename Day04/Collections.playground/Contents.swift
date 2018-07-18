//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


//ARRAYS


var snackItems = [String]()
var items = ["Tornado potato","Shaved Ice","Donuts","Ice cream","French fries"]
var snacks : [String]
snacks = ["Tornado potato","Shaved Ice","Donuts","Ice cream","French fries"]
print("Snacks : \(snacks)")
for snack in snacks
{
    print("Each day : \(snack)")
}
for snack in 0..<snacks.count
{
    print("New day : \(snacks[snack])")
}

//range till index 2
for snack in snacks[...2]
{
    print("New day one sided : \(snack)")
}
//index after 2
for snack in snacks[2...]
{
    print("New day one sided : \(snack)")
}
//print with index and values
for (index, value) in snacks.enumerated()
{
    print("index : \(index) value : \(value)")
}
//repeating values in array
var number = Array(repeating: 1, count: 5)
print("Numbers : \(number)")
number[2] = 35
print("Numbers : \(number)")
var abc = Array(repeating: 0, count: 4)
print("Values : \(abc)")
abc[1] = 50
print("Values : \(abc)")
var MainArray = number + abc
print("Main Array : \(MainArray)")
MainArray[6] = 80
print("Main Array : \(MainArray)")
MainArray[0] = number[3] + abc[2]
print("Main Array : \(MainArray)")

//adding values in array
var grocery = ["Pringles","Juice"]
grocery += ["Fruits","Chocolates"]
grocery.append("Tometoes")
grocery.append("Rice")
print("Grocery : \(grocery)")

//replacing elements from index 1,2,3
grocery[1...3] = ["Milk","Veggies","Mayo","Bread"]
print("Grocery : \(grocery)")

//adding elements from index 1
grocery.insert("Ice cream", at: 1)
print("Grocery : \(grocery)")

//removing elements
grocery.remove(at: 7)
grocery.removeLast()
print("Grocery : \(grocery)")

grocery.removeAll()
if grocery.isEmpty
{
    print("Everything in kitchen")
}
else
{
 print("Go for a shopping")
}

//stoing values with different datatypes
var Salman = [Any]()
Salman.append("Dabangg")
Salman.append(2)
Salman.append(1.0)
print("Rajnikanth Movies : \(Salman)")


//SETS


var languages = Set<String>()
languages.insert("Gujarati")
languages.insert("Punjabi")
languages.insert("Tamil")
languages.insert("Telugu")
languages.insert("Sanskrit")
languages.insert("English")
print("Languages : \(languages)")
languages.remove("Sanskrit")
print("Languages : \(languages)")

//checking if values is in set or not
print("Telugu is available in class : \(languages.contains("Telugu"))")
print("Sanskrit is available in class : \(languages.contains("Sanskrit"))")

//sorting the values
for lang in languages.sorted()
{
    print("Languages : \(lang)")
}

//Set operations

let motherTongue : Set = ["Gujarati","Punjabi","Urdu","Telugu","Hindi","Marathi"]
print("Mother Tongue : \(motherTongue)")
//Union(all values of two sets)
print("Union : \(languages.union(motherTongue).sorted())")

//common values of two sets
print("InterSection : \(languages.intersection(motherTongue).sorted())")

//different values of two sets
print("Symmetric Difference : \(languages.symmetricDifference(motherTongue).sorted())")

//sub of set two from one
print("Subtracting 2 - 1 : \(motherTongue.subtracting(languages).sorted())")

//si=ub of set one from two
print("Subtracting 1 - 2 : \(languages.subtracting(motherTongue).sorted())")

//checking for Subset, Superset, Disjoint
var commanLang = languages.subtracting(motherTongue).sorted()
print("Common Languages : \(commanLang)")
print(languages.isSubset(of: commanLang))
print(languages.isSuperset(of: commanLang))
print(motherTongue.isDisjoint(with: languages))


//DICTIONARIES


var appreciation = [String : String]()
appreciation["Day 1"] = "Potato Tornado"
appreciation["Day 2"] = "Dounts"
print("Appreciation : \(appreciation)")
print("\(appreciation.count) Appreciation Days")
//appreciation = [:]
if appreciation.isEmpty
{
    print("No Appreciation😡...Just Studies...")
}
appreciation["Day 3"] = "Shaved Ice"
print("Appreciation : \(appreciation)")

let oldItem = appreciation.updateValue("Gola", forKey: "Day 3")
print("Appreciation : \(appreciation)")
print("Old Item : \(oldItem)")

//checking for available items
if let Day4Item = appreciation["Day 4"]
{
print("Day 4 Item : \(Day4Item)")
}
else
{
    print("Nothing for day 4")
}

//removed item with key
appreciation["Day 4"] = "Ice cream"
if let removedValue = appreciation.removeValue(forKey: "Day 2")
{
print("Appreciation : \(appreciation)")}
else
{
    print("Nothing foung for day 3")
}

//removed item with nil
appreciation["Day 1"] = nil
print("Appreciation : \(appreciation)")

//to get keys
for app in appreciation.keys
{
    print("App Key : \(app)")
}
//to get values
for app in appreciation.values
{
    print("App Key : \(app)")
}
//to get keys and values
for (key, values) in appreciation
{
    print("Keys : \(key) values : \(values)")
}

var flight = [String : AnyObject]()
flight["Number"] = "9W 234" as AnyObject
flight["Duration"] = 16 as AnyObject
flight["Cost"] = 1000.50 as AnyObject
print("Flight : \(flight)")
