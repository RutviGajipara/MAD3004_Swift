//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

print("values of str :  ",str)

var number = 20
print("Number : ",number)

print("Anu","Simran","Prabjeet", separator: " J ")

var sum = number+20
print("sum of \(number) and 20 is \(sum)")
print("🤪","😎","😂",separator:"✨")
var happy = "😆"
print("happy : \(happy)")

var temp : Int
temp = 35
if temp < 10
{
    print("cold")
}
else if(temp > 10)
{
    print("hot")
}
else
{
print("high alert")
}

let PI : Float = 3.1429
print("PI = \(PI)")

var task : String?
task = "writing"
if task == nil
{
    print("yay..no task...just fun")
}
else
{
    print(task!)
}

var taskList : [String]
taskList = ["Singing","Dancing","Witing","Eating","Reading"]
for activity in taskList
{
    print("perform \(activity)")
}

var itr = 1
while(itr < 5)
{
    print("itr : \(itr)")
    itr = itr + 1
}

itr = 10
repeat
{
    print("itr : \(itr)")
    itr = itr + 10;
}
while(itr <= 30)

itr = 10
switch itr {
case 10 :
    print("Ten")
    fallthrough
case 20:
    print("Twenty")
case 30,40:
    print("Thirty of Fourty")
case 60..<100:
   print("Sixty to hundred")
default:
    print("Unreachable")
}






