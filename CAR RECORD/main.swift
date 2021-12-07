import Foundation


class CarRecord   {
    var ID : String = ""
    var name : String = ""
    var type : String =  ""
    var producer : String = ""
    var price  : Int = 0
    var quantity  : Int = 0
    var quality : String = ""
    var array_car = [CarRecord]()
    
    init(ID:String,name:String,type :String,producer:String,price:Int,
         quantity: Int,quality :String) {
        self.ID = ID
        self.type = type
        self.name = name
        self.price = price
        self.producer = producer
        self.quality = quality
        self.quantity = quantity
        
    }
    func getCarID() -> String {
        return ID
    }
    func getCarName() -> String{
        return name
    }
    func setCarID(ID : String ){
        self.ID = ID
    }
    init(){
        
    }
    func  AddNewCar(){
        print("\n Enter ID : ")
        let ID = readLine()
        print("\n Enter name :")
        let name = readLine()
        print("\n Enter type : ");
        let type = readLine()
        print("\n Enter producer : ")
        let producer = readLine()
        print("\n Enter price :")
        var price : Int?
         price = Int(readLine()!)
        print("\n Enter quantity :")
        var quantity : Int?
        
        quantity = Int(readLine()!)
        print("\n Enter quality :")
        let quality = readLine()
        
        var car = CarRecord.init(ID: ID!, name: name!, type: type!, producer: producer!, price: price! , quantity: quantity!, quality: quality!)
        array_car.append(car)
    
        
    }
     
    func showCar(){
        for i in self.array_car {
            print("-----------------------")
            print("ID : ",i.ID)
            print("Name : ",i.name)
            print("Type : ",i.type)
            print("Price : ",i.price)
            print("Producer : ",i.producer)
            print("Quantity : ",i.quantity)
            print("Quality : ",i.quality)
            print("-----------------------")
        }
    }
    func searchCar(){
        var check = 0
        print("Select : ")
        print("1. Search By Car Name")
        print("2. Search By ID ")
        var select : Int?
        select = Int(readLine()!)
        if select == 1 {
            print("Enter name search : ")
            let name = readLine()
            for i in self.array_car {
                if i.name == name {
                    print("-----------------------")
                    print("ID : ",i.ID)
                    print("Name : ",i.name)
                    print("Type : ",i.type)
                    print("Price : ",i.price)
                    print("Producer : ",i.producer)
                    print("Quantity : ",i.quantity)
                    print("Quality : ",i.quality)
                    print("-----------------------")
                    check = 1
                }
               
            }
            if(check == 0){
                print(" Name Not Found ")
            }
        }else if select == 2 {
            print("Enter ID search : ")
            let ID = readLine()
            for i in self.array_car {
                if i.ID == ID {
                    print("-----------------------")
                    print("ID : ",i.ID)
                    print("Name : ",i.name)
                    print("Type : ",i.type)
                    print("Price : ",i.price)
                    print("Producer : ",i.producer)
                    print("Quantity : ",i.quantity)
                    print("Quality : ",i.quality)
                    print("-----------------------")
                    check = 1
                }
            }
            if(check == 0){
                print(" ID Not Found ")
            }
        }
        
    }
    func DeleteCar(){
        var check = 0
        print("Enter ID  Delete : ")
        let ID = readLine()
         var i = 0
        while  i <= self.array_car.count{
       
            if self.array_car[i].ID == ID {
                self.array_car.remove(at: i)
                check = 1
            }
            i  = i + 1
        }
       
        if(check == 0){
            print(" ID Not Found ")
        }
    }
    func SortAZByName(){
        print(" Sort By Price from low to high")
        var i = 0
       while  i < self.array_car.count - 1 {
            
           var j = i + 1
           while j < self.array_car.count {
               
               if self.array_car[i].price > self.array_car[j].price {
                   let tg = array_car[i]
                   array_car[i] = array_car[j]
                    array_car[j] = tg
               }
               j = j  + 1
           }
          
           i  = i + 1
       }
        
        showCar()
    }
 
}

func Result(){
    var select :Int?
    
    repeat {
        print("1. Car")
        print("2. Customer")
        print("3. Quit")
        print("Choose a Number")
        select  = Int(readLine()!)
        switch select! {
        case 1: car()
        case 2: customer()
        default :
            break
        }
    }while select! != 3
}


func car(){
        
    let car = CarRecord()
    let customer =  Customer()
     
    var select :Int?
    repeat{
        carOptions()
        print("\n Enter Select :")
        select = Int(readLine()!)
        switch select{
        case 1:
            car.AddNewCar()
        case 2:
            car.showCar()
        case 3:
            car.searchCar()
        case 4:
            car.DeleteCar()
        case 5:
            car.SortAZByName()
        default :
            break
        }
        
    }while select!  != 6

}
func carOptions(){
    print("1. Add Car")
    print("2. Show Car")
    print("3. Search Car")
    print("4. Delete Car")
    print("5. Sort  A - Z")
    print("6. Go Back")

}
Result()

