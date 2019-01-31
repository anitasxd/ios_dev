// Playground - noun: a place where people can play

//import UIKit

var str = "Hello, playground"

var msg1 = "Hello Anita !"

var str2 = str + msg1

if (str2 == msg1){
    print("it is teh same")
}
else if (str2 == str){
}
else{
    print("they are not same")
}

print(str2)
var str1 = "go"
str1 = "stop"

var str_array = ["happy", "sad", "fustrated"]
var int_str = str_array[1]
var strcount = str_array.count
print(str_array)
print(strcount
)
print(int_str)
str_array += ["angry"
]

str_array

var str_dic = ["angry" : "the feeling of anger", "happy" : "the feeling of pleasure"]

var str_meaning = str_dic["angry"]


class president {
    var office: String = "Anita"
    var title : String = "boss"
}

var keyclub_president = president()
var lgbclub_president = president()


keyclub_president.office = "221 Denim"
keyclub_president.title = "anita"
lgbclub_president.office = "1573 Walkingshaw"

print(keyclub_president.office)
print(lgbclub_president.office)

class president1 {
    var office: String = "Daniel"
    func command() -> String {
        return ("Let's have a meeting")
    }
    func Import(i1: String) -> String {
        return("the value of i1 is" + i1
        )
    }
    func export (name: String) -> String {
        return "hello Anita"
    }
    func eswitch(name: String) -> String {
        var retname : String = " "
        switch name {
            case "anita":
            retname = "anita"
            case "daniel":
            retname = "daniel"
        default:
            retname = "david"
        }
        return (retname)
    }
}
var swimclubpresident = president1()


swimclubpresident.command()
swimclubpresident.eswitch("anita")
swimclubpresident.eswitch("rolanda")



class Store {
func getProduct (number: Int) -> (id: String, name: String, price: Int){
var id  = "IP435", name = "iMAC", price = 1399

    switch number {
case 1:
id = "AP234"
name = "iphone 6"
price = 1333
case 2:
id = "PE532"
name = "ipad air"
price = 232
default:
break
}
return (id, name, price)
}
}

let store = Store()
let product = store.getProduct(4)
print("id =\(product.id)")
print("name =\(product.name)")

var message = "Swift is great"
message = "hello"


// control flow -> switch, for, if...else //

//var i = 0
/*
Repeat {
    i++
    print(i)
}
while i < 10 -> repeat while for swift 2 */

var i = 0
for i in 1..<11 {
    //i++
    print(i)
}







