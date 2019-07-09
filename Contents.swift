import UIKit


//Intentions : we are going to create a bank account that will allow is to make deposits, make withdrawls, and transfer funds between two accounts!
//Because of our intentions, we know that we are going to need three functions at least
class BankAccount{
    //properties go below here:
    var accountName : String
    var currentBalance : Double
    var routingNumber : Int
    
    //add your initializer, which will contain your properties above ^
    
    init(){
        accountName = "name123"
        currentBalance = 0.0
        routingNumber = 0
    }
    
    //The challenge is to create functions for depositing, withdrawling, setting account name, and setting routine number - 4 functions
    
    func makeDeposit(depositAmount: Double) {
        currentBalance = currentBalance + depositAmount
    }
    
    func makeWithdrawl(withdrawlAmount: Double) {
        currentBalance = currentBalance - withdrawlAmount
    }
    
    func setAccountName(newName: String) {
        accountName = newName
    }
    
    func setRoutingNumber(newRoutingNumber: Int) {
        routingNumber = newRoutingNumber
    }
    
    //this function check everything allows me to make sure that I set everything correctly
    func checkEverything() {
        print(accountName)
        print(currentBalance)
        print(routingNumber)
    }
    
    //I need to create a function where I am able to transfer money from Kylas Account into Halles account
    
    //there are four arguments, and they are :
    //Money - how much?
    //recipient
    //Sender info
    //routing number
    
    
    //For senv=der and reciepient, I am going to create OBJECTS within a function, meaning that I am going to cerate a bank account everytime I access this account transfer. This is going to be important when we work with aviatrix (project) on Wednesday
    
    func accountTransfer(sender: BankAccount, recipient: BankAccount, transferAmount: Double, senderRoutingNumber: Int) {
        
        if sender.routingNumber == senderRoutingNumber {
            sender.currentBalance = sender.currentBalance - transferAmount
            recipient.currentBalance = recipient.currentBalance + transferAmount
            print("The recipient has successfully recieved the transfer")
        } else {
            print("I'm sorry, but the info that you typed in is not correct! Please try a different routing number!")
        }
        
    }
    
}



//This is outside of the class, I am going to create bank accounts (Objects)

var hallesBankAccount = BankAccount()
var kylasBankAccount = BankAccount()

kylasBankAccount.setAccountName(newName: "Kylas Bank Account")
kylasBankAccount.setRoutingNumber(newRoutingNumber: 999)
kylasBankAccount.makeDeposit(depositAmount: 1000.0)


hallesBankAccount.setAccountName(newName: "Halle's Bank Account")
hallesBankAccount.setRoutingNumber(newRoutingNumber: 555)
hallesBankAccount.makeDeposit(depositAmount: 10.00)

hallesBankAccount.checkEverything()


kylasBankAccount.accountTransfer(sender: kylasBankAccount, recipient: hallesBankAccount, transferAmount: 13.7, senderRoutingNumber: 999)

//The routine number above correlates to the OG routine number

hallesBankAccount.checkEverything()
kylasBankAccount.checkEverything()  
