
import Foundation


class Customer   {
    var ID : String = ""
    var name : String = ""
    var gender : String = ""
    var address : String =  ""
    var phonenumber : String = ""
    var date  : String = ""
    var array_customer = [Customer]()
    init(ID:String,name:String,address :String,phonenumber:String,
         date: String,gender : String ) {
        self.ID = ID
        self.name = name
        self.address = address
        self.phonenumber = phonenumber
        self.date = date
        self.gender = gender
        
    }
    func getID() -> String {
        return ID
    }
    func getName() -> String{
        return name
    }
    func setID(ID : String ){
        self.ID = ID
    }
    init(){
        
    }
    func  AddCustomer(){
      
        print("\n Enter ID : ")
        let ID = readLine()
        print("\n Enter name :")
        let name = readLine()
        print("\n Enter Address : ");
        let address = readLine()
        print("\n Enter Phone Number : ")
        let phonenumber = readLine()
        print("\n Enter Date :")
        let date = readLine()
        print("\n Enter Gender :")
        let gender = readLine()
        
        
        let customer =  Customer.init(ID: ID!, name: name!, address: address!, phonenumber: phonenumber!, date: date!,gender: gender!)
        array_customer.append(customer)
    
        
    }
     
    func ShowCustomer(){
       
        for i in self.array_customer {
            print("-----------------------")
            print("ID : ",i.ID)
            print("Name : ",i.name)
            print("Gender  : ",i.gender)
            print("Address : ",i.address)
            print("Phone Number : ",i.phonenumber)
            print("Date  : ",i.date)
            print("-----------------------")
        }
    }
    func Search(){
        var check = 0
        print("Select : ")
        print("1. Search By Name")
        print("2. Search By ID ")
        
        var select : Int?
        select = Int(readLine()!)
        if select == 1 {
            print("Enter name search : ")
            let name = readLine()
            for i in self.array_customer {
                if i.name == name {
                    print("-----------------------")
                    print("ID : ",i.ID)
                    print("Name : ",i.name)
                    print("Gender  : ",i.gender)
                    print("Address : ",i.address)
                    print("Phone Number : ",i.phonenumber)
                    print("Date  : ",i.date)
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
            for i in self.array_customer {
                if i.ID == ID {
                    print("-----------------------")
                    print("ID : ",i.ID)
                    print("Name : ",i.name)
                    print("Gender  : ",i.gender)
                    print("Address : ",i.address)
                    print("Phone Number : ",i.phonenumber)
                    print("Date  : ",i.date)
                    print("-----------------------")
                    check = 1
                }
                
               
            }
            if(check == 0){
                print(" ID Not Found ")
            }
        }

    }
    func countNumber() -> Int {
        return array_customer.count
    }
    func DeleteCustomer(){
        var check = 0
        print("Enter ID  Delete : ")
        let ID = readLine()
         var i = 0
        while  i <= self.array_customer.count{
       
            if self.array_customer[i].ID == ID {
                self.array_customer.remove(at: i)
                check = 1
            }
            i  = i + 1
        }
       
        if(check == 0){
            print(" ID Not Found ")
        }
    }
    func sortByname(){
        
       
        print(" Sort Name By A to Z")
        
        
        array_customer.sort { (customer1, customer2) -> Bool in
            let customer_name1 = customer1.name
            let customer_name2 = customer2.name
            return (customer_name1.localizedStandardCompare(customer_name2) == .orderedAscending)
        }
        for i in self.array_customer {
            print("-----------------------")
            print("ID : ",i.ID)
            print("Name : ",i.name)
            print("Gender  : ",i.gender)
            print("Address : ",i.address)
            print("Phone Number : ",i.phonenumber)
            print("Date  : ",i.date)
            print("-----------------------")
            
           
        }
    }
}

func customer(){
    
    let customer = Customer()
    var select :Int?
    repeat{
        customerOptions()
        print("\n Enter Select :")
        select = Int(readLine()!)
        switch select{
        case 1:
            customer.AddCustomer()
        case 2:
            customer.ShowCustomer()
        case 3:
            customer.Search()
        case 4:
            customer.DeleteCustomer()
        case 5:
            customer.sortByname()
        case 6:
            print("Total number of customers are : ",customer.countNumber())
        default :
            break
        }
        
    }while select!  != 7
    
}
func customerOptions(){
    print("1. Add Customer")
    print("2. Show Customer")
    print("3. Search Customer")
    print("4. Delete Customer")
    print("5. Sort  Customer ")
    print("6.Total Customers")
    print("7. Go Back")
}


