//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func greet()
{
    print("Greetings..")
}
greet()

func greet(message : String)
{
    print("\(message)")
}
greet(message : "Good Afternoon")

func add(n1: Int, n2:Int)
{
    print("\(n1) + \(n2) \(n1+n2)")
}
add(n1:10,n2:20)

func add(_ n1: Int, _ n2: Int) -> Int
{
    return (n1+n2)
}
var sum = add(20,30)
print("Sum = \(sum)")

func sub(_ n1: Float, _ n2: Float) -> Float
{
    return(n2-n1)
}
var Result = sub(10.45,50.95)
print("Sub = \(Result)")

func mul(n1: Int, n2: Int) -> Int
{
    return(n1*n2)
}
print("Mul = \(mul(n1: 2, n2: 8))")

func swap(j: Int, k:Int) -> (Int,Int)
{
    //function arguments are Let constant by default
//    var temp = j;
//    j = k
//    k = temp
    return(j,k)
}

var (a,b) = swap(j: 2 ,k: 4)
print("a = \(a) b = \(b)")

func swap(j: inout Int, k: inout Int)
{
    let temp = j;
        j = k
        k = temp
}
//(a,b) = swap(j: 12 ,k: 14)
//print("a = \(a) b = \(b)")

var n1 = 10, n2 = 20
swap(&n1, &n2)
print("n1 : \(n1) n2 : \(n2)")

func SI(amount : Double, years : Double = 5, rate : Double = 10.25) -> Double
{
    return ((amount * years * rate)/100)
}
print("deposit 1 : \(SI(amount: 1000.23, years: 1, rate: 5.4))")
print("deposit 2 : \(SI(amount: 1000.23, years: 4, rate: 5.4))")
print("deposit 3 : \(SI(amount: 1000.23))")

func wishes(wishList: String...)
{
    for eachwish in wishList
    {
        print("\(eachwish)")
    }
}
wishes(wishList: "Happy Birthday", "Have Fun", "Party Hard")
wishes(wishList: "subhakanshalu", "shubhkamnaye", "janmdivs ni shubhkamna")

func addArray(arrays:[Int]...) -> [Int]
{
    var a = arrays.count
    print("a = \(a)")
    var array1 = arrays[0]
    var array2 = arrays[1]
     var sumArray = [Int]()
    if array1.count == array2.count
    {
        for itr in 0..<array1.count
        {
            sumArray.append(array1[itr] + array2[itr])
        }
    }
   
    return sumArray
}
var ar1 = [1,2,3,4,5]
var ar2 = [6,7,8,9,10]
var result = addArray(arrays: ar1, ar2)
print("Result : \(result)")

//function as a type
var someopr : (Int, Int) -> Int = mul
print("Multiplication : \(someopr(2,5))")

someopr = add
print("Addition : \(someopr(80,90))")

//function as a parameter
func mathopr(someFunc: (Int, Int) -> Int, n1: Int, n2: Int)
{
    print("math operation : \(someFunc(n1,n2))")
}
mathopr(someFunc: mul, n1: 6, n2: 3)
mathopr(someFunc: add, n1: 10, n2: 20)

//function as a return type
func increase(_ input: Int) -> Int
{
    return (input + 1)
}

func decrease(_ input: Int) -> Int
{
    return (input - 1)
}
func counting(flag: Bool) -> (Int) -> Int
{
    return flag ? increase : decrease
//    if flag
//    {
//     return increase
//    }
//    else
//    {
//        return decrease
//    }
}
var countFunc = counting(flag: true)
print("\(countFunc(3))")
countFunc = counting(flag: false)
print("\(countFunc(3))")
