import Foundation

// задание №1 (создание типа коллекции очередь)
var queue:[String] = ["Вася", "Петя"]
var numbers: [Int] = [7, 56, 34]

//дженерик добавления
func before<T> (meaning: T, array: [T])->[T]{
    var val = array
  val.append(meaning)
    return val
}

queue = before(meaning: "Витя", array: queue)
queue = before(meaning: "Саша", array: queue)
queue = before(meaning: "Мария", array: queue)


numbers = before(meaning: 4, array: numbers)
numbers = before(meaning: 2, array: numbers)
numbers = before(meaning: 5, array: numbers)
numbers = before(meaning: 43, array: numbers)

print (queue)
print(numbers)


// задание 2 (фильтр массива)
var q = numbers.filter{number in number % 2 == 0}
print(q)

var i = numbers.filter{number in number > 5}
print(i)



// Задание 3


struct Names {
    var names: [String] = []
    
    mutating func push(human: String){
            names.append(human)
        }
        mutating func pop()-> String{
            return names.removeFirst()
        }
        mutating func printInfoNames(){
            for element in names{
                print (element)
            }
        }
    subscript (name: String)-> Int?{
        get{
        for (index, value) in names.enumerated(){
            if value == name{
                return index
            }
        }
        return nil
        }
       
    }
}

var t = Names()
t.push(human: "Вася")
t.push(human: "Петя")
t.push(human: "Дима")
print(t)
print(t["Jon"])
print(t["Петя"])
t.printInfoNames()
t.pop()
t.printInfoNames()





//class Talon{
//    var number: Int
//    var name: String
//    var pasportInfo: Int?
//
//    init(number: Int, name: String, pasportInfo: Int?) {
//        self.number = number
//        self.name = name
//        self.pasportInfo = pasportInfo
//    }
//
//
//}
//
//struct quene {
//    private var tallons: [Talon] = []
//
//    mutating func push(human: Talon){
//        tallons.append(human)
//    }
//    mutating func pop()-> Talon{
//        return tallons.removeFirst()
//    }
//    mutating func printInfoTallons(){
//        for element in tallons{
//            print (element)
//        }
//    }
//}
//
//var q = quene()
//q.push(human: .init(number: 1, name: "Oleg", pasportInfo: nil))
//q.push(human: .init(number: 2, name: "Vasya", pasportInfo: 2345623234))
//q.push(human: .init(number: 3, name: "Olga", pasportInfo: nil))
//q.pop()
//q.printInfoTallons()
//
//
//
//
//
//
