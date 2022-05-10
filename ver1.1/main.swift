import Foundation //Initializing needed variable

func clearScreen() {
    print("\u{001B}[2J")
}
var timeLimit = 50
var moneycap = 50//Initializing needed variable
var stock1 = 50 //Initializing needed variable
var stock2 = 50 //Initializing needed variable
var stock3 = 50 //Initializing needed variable
var playerStock1 = 0 //Initializing needed variable
var playerStock2 = 0 //Initializing needed variable
var playerStock3 = 0 //Initializing needed variable
var money = 100 //Initializing needed variable
var playerStocks = 0 //Initializing needed variable
var debug = 0 //Initializing needed variable
var debugMode = false //Initializing needed variable
var trueName = "" //Initializing needed variable
var hasPet = true //Initializing needed variable
var truePetName = "" //Initializing needed variable
var isCrash = false //Initializing needed variable
var gameComplete = false //Initializing needed variable
print("\u{001B}[2J") //Clears screen
print("Enter your name:") //Asks question to answer
if let name = readLine() { //Prompts player input
    trueName = name //defines input throaway variable as permanent variable
}
clearScreen()
print("Do you have a pet? (y/n)") //Asks question to answer
let petDecision = readLine() //Prompts player input
if petDecision == "y" { //Checking for yes input
    clearScreen() //Clears screen
    print("What's your pet's name?") //Asks question to answer
    if let petName = readLine() { //Prompts player input
        truePetName = petName //Defines input throwaway variable as permanent variable
        if truePetName == "" {
            truePetName = "A small orphan child"
        }
        if truePetName == " " {
            truePetName = "A small orphan child"
        }
    }
} else {
if petDecision == "n" { //Checks for no input
    clearScreen() //Clears screen
    hasPet = false //Declares that the player input no
} else {
    clearScreen()
    print("Intepreting vague answer as, 'Yes'.")
    print("")
    print("What's your pet's name?")
    if let petName = readLine() {
        truePetName = petName
        if truePetName == "" {
            truePetName = "A small orphan child"
        }
        if truePetName == " " {
            truePetName = "A small orphan child"
        }
    }
}
}
if trueName == "debug" { //Checks for debug mode
    debugMode = true //Puts game into debug mode
}
if trueName == "" { //Checks for blank name input
    trueName = "investor" //Gives generic name
}
func info() { // The startup text
    if debugMode == false { //Checks for debug mode
        clearScreen() //Clears screen
        print("Welcome to STOCKS: Economy Simulator, \(trueName).") //Welcome message
        sleep(3) //Sleep
        if hasPet == true { //Check for if the player has a pet
            print("") //Prints empty line
            print("\(truePetName) needs surgery!") //Print game story
            sleep(2) //Sleep
            print("Gain 1000 dollars or they DIE.") //Prints game story
        } else { // if the player doesn't have a pet
            print("") //Prints empty line
            print("YOU need surgery.") //Print game story
            sleep(2) //sleep
            print("Gain 1000 dollars or you DIE.") //print game story
        }
        sleep(2) //sleep
        print("\nGood luck.") //sleep
        sleep(3) //sleep
    }
}
func win() { //Check for if the player has met the qualifications to win the game
    if money >= 1000 { //Checking the money variable
        gameComplete = true //Marks the game as completeable
    }
}
info() //Runs the game start text

    func newsHeadline() { //Typewriter effect for special events
        clearScreen() //Clears screen
        print(" B")//Prints section
        usleep(100000) //sleeps for 100000 millionths of a second
        clearScreen() //Clears screen 
        print(" Br")//Prints section
        usleep(100000) //sleeps for 100000 millionths of a second
        clearScreen() //Clears screen
        print(" Bre")//Prints section
        usleep(100000) //sleeps for 100000 millionths of a second
        clearScreen() //Clears screen
        print(" Brea")//Prints section
        usleep(100000) //sleeps for 100000 millionths of a second
        clearScreen() //Clears screen
        print(" Break")//Prints section
        usleep(100000) //sleeps for 100000 millionths of a second
        clearScreen() //Clears screen
        print(" Breaki")//Prints section
        usleep(100000) //sleeps for 100000 millionths of a second
        clearScreen() //Clears screen
        print(" Breakin")//Prints section
        usleep(100000) //sleeps for 100000 millionths of a second
        clearScreen() //Clears screen
        print(" Breaking")//Prints section
        usleep(100000) //sleeps for 100000 millionths of a second
        clearScreen() //Clears screen
        print(" Breaking N")//Prints section
        usleep(100000) //sleeps for 100000 millionths of a second
        clearScreen() //Clears screen
        print(" Breaking Ne")//Prints section
        usleep(100000) //sleeps for 100000 millionths of a second
        clearScreen() //Clears screen
        print(" Breaking New")//Prints section
        usleep(100000) //sleeps for 100000 millionths of a second
        clearScreen() //Clears screen
        print(" Breaking News")//Prints section
        usleep(100000) //sleeps for 100000 millionths of a second
        clearScreen() //Clears screen
        print(" Breaking News!") //Prints section
        sleep(4) //sleeps
    }

    func crash() { //Decides if the stock market crashes
        let crashChance = Int.random(in:1..<40) //The chance of a crash
        if crashChance == 5 { //If this number is met, market crash
            newsHeadline() //Plays the special event function
            print(" \n\nThis just in, the stock market has CRASHED!") //prints that the stock market has crashed
            sleep(5) //sleeps
            moneycap = 10 //changes the amount of money that the stocks can change by at a time to 10
            stock1 = Int.random(in:1..<30) //Decides a random amount of money for stock 1 to be set to
            stock2 = Int.random(in:1..<30) //Decides a random amount of money for stock 2 to be set to 
            stock3 = Int.random(in:1..<30) //Decides a random amount of money for stock 3 to be set to 
            isCrash = true //Tells the rest of the game that a crash is in affect
        }
    }

    func sellStocks() { //The function that is run to sell stocks
        clearScreen() //Clears screen
        print(" You have \(money) dollars.") //Player money display
        print(" Stock 1 is currently priced at \(stock1). Owned: \(playerStock1). Type '1' to sell.") //Gives information on stock 1
        print(" Stock 2 is currently priced at \(stock2). Owned: \(playerStock2). Type '2' to sell.") //Gives information on stock 2
        print(" Stock 3 is currently priced at \(stock3). Owned: \(playerStock3). Type '3' to sell.") //Gives information on stock 3
        print(" Choose  a stock, or type cancel.") //Gives input options
        let sellStock = readLine() //Reads player input
        if sellStock  == "1" { //If selling stock 1
            if playerStock1 > 0 { //Making sure the player has that stock to sell
                playerStock1 -= 1 //Subtracts the stock from the player's inventory
                money += stock1 //Adds the cost of the stock to the player's bank
                sellStocks() //Goes back to sell stock menu
            } else { //If the player doesn't have that stock
                clearScreen()  //Clears screen
                print(" You don't have that stock.") //Informs the player they don't have that stock
                sleep(2) //Sleeps
                sellStocks() //Goes back to the sell stock menu
            }
        } else {
            if sellStock  == "2" { //If selling stock 1
                if playerStock2 > 0 { //Make sure the player has that stock to sell
                    playerStock2 -= 1 //Subtracts the stock from the player's inventory
                    money += stock2 //adds the cost of the stock to the player's bank
                    sellStocks() //goes back to the sell stock menu
                } else { //If player doesn't have that stock
                    clearScreen() //Clears screen
                    print(" You don't have that stock.") //Informs the player they don't have that stock
                    sleep(2) //Sleeps
                    sellStocks() //Goes back to stock sell menu
                }
            } else {
                if sellStock  == "3" { //If selling stock 3
                    if playerStock3 > 0 { //Make sure the player has that stock
                        playerStock3 -= 1 //Subtracts that stock from the player's inventory
                        money += stock3 //Adds the cost of that stock to the player's bank
                        sellStocks() //Return to stock sell menu
                    } else { //If the player doesn't have stock 3
                        clearScreen() //Clears screen
                        print(" You don't have that stock.") //Tells the player they don't have that stock
                        sleep(2) //Sleeps
                        sellStocks() //Goes back to the stock sell menu
                    }
                } else {
                    if sellStock == "cancel" { //If the player types cancel
                        start() //Return to the start menu
                    } else { //If none of the options were typed
                        sellStocks() //Restart Sell Stock menu
                    }
                }
            }
        }
    }



    func Robbie() { //UNUSED FEATURE!! NOT PRESENT IN FINAL GAME, INITIALLY USED IF THE PLAYER HAD NO MONEY LEFT.
        clearScreen() //Clears Screen
        print(" Are you sure?") //Asks the player to confirm work experience
        let decision = readLine() //Prompt player decision
        if decision != "yes" { //If the player doesn't decide yes
            start() //Return to start menu
        } else { //If the decide yes
            clearScreen() //Clear screen
            print(" Haha.") //Taunt
            sleep(2) //Sleeps
        }
        clearScreen() //Clears screen
        print(" Please type the following, BACKWARDS.") //Player instructions
        print(" Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc pellentesque pretium mi at mollis. Mauris ut risus sed mi aliquet vehicula rhoncus sit amet tortor. Vestibulum tempor enim blandit, tristique ipsum nec, ullamcorper dui. Mauris eleifend tortor at iaculis suscipit. Nunc urna orci, molestie in metus et, viverra congue felis. Duis mattis sem luctus, sagittis quam eget, sodales augue. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Maecenas auctor sit amet eros eget consectetur. Vestibulum eu lobortis nibh.") //Prompt to type
        print(" ") //New line
        print(" ") //New line
        let didTheyWork = readLine() //Prompts player input
        if didTheyWork == (" .hbin sitrobol ue mulubitseV .rutetcesnoc tege sore tema tis rotcua saneceaM .soeanemih sotpecni rep ,artson aibunoc rep tneuqrot arotil da uqsoicos iticat tnetpa ssalC .eugua selados ,tege mauq sittigas ,sutcul mes sittam siuD .silef eugnoc arreviv ,te sutem ni eitselom ,icro anru cnuN .tipicsus silucai ta rotrot dnefiele siruaM .iud reprocmallu ,cen muspi euqitsirt ,tidnalb mine ropmet mulubitseV .rotrot tema tis sucnohr alucihev teuqila im des susir tu siruaM .sillom ta im muiterp euqsetnellep cnuN .tile gnicsipida rutetcesnoc ,tema tis rolod muspi meroL") { //if they worked correctly
            clearScreen() //Clear screen
            print("Jesus Christ, you did it. (+50)") //Congratulations message
            money += 50 //adds money to bank
            sleep(3) //sleeps
            start() //start menu
        } else { //if the player didn't work correctly
            print("Dude, what was that lmfao? You know you don't deserve anything. Get lost.") //taunt
            sleep(3) //sleeps
            start() //start menu
        }
    }

    func buyStocks(){ //Starts buy stock menu
        clearScreen() //clear screen
        print("You have \(money) dollars.") //Player money display
        print("Stock 1 is currently priced at \(stock1). Owned: \(playerStock1). Type '1' to purchase.") //Gives info on stock 1
        print("Stock 2 is currently priced at \(stock2). Owned: \(playerStock2). Type '2' to purchase.") //gives info on stock 2
        print("Stock 3 is currently priced at \(stock3). Owned: \(playerStock3). Type '3' to purchase.") //gives info on stock 3
        print("Surgery is currently priced at 1000. Owned: 0. Type 'surgery' to purchase.") //Win goal
        print("Choose an option, or type cancel.") //Gives menu options
        let buyStock = readLine() //Prompts player input
        if buyStock == "helpme" {
            newsHeadline()
        }
        if buyStock  == "1" { //If player buys stock 1
            if money >= stock1 { //Checks for adequete money
                money -= stock1 //removes cost from player bank
                playerStock1 += 1 //adds the stock to player inventory
                buyStocks() //return to buy menu
            } else { //if they can't afford
                clearScreen() //clear screen
                print("You can't afford that.") //informs the player they cannot afford it
                sleep(3) //sleeps
                buyStocks() //returns to buy menu
            }
        }
        if buyStock == "surgery" { //if the player attempts to win the game
            if gameComplete == true { //checks if win qualifications are met
                if hasPet == true { //If the player has a pet 
                    clearScreen() //clear screen
                    print("You win! You can afford \(truePetName)'s surgery, and they can go on living their non-stock driven life!")
                    sleep(5)
                    exit(0)
                } else {
                    clearScreen()
                    print("You win! You can afford your surgery, and can go on living a non-stock driven life!")
                    sleep(5)
                    exit(0)
                }
            }
        if gameComplete != true {
            print("I'm sorry, you can't afford the surgery yet.")
            sleep(4)
            buyStocks()
        }
        }
        if buyStock == "2" {
            if money >= stock2 {
                money -= stock2
                playerStock2 += 1
                buyStocks()
            } else {
                clearScreen()
                print("You can't afford that.")
                sleep(3)
                buyStocks()
            }
        }
        if buyStock == "3" {
            if money >= stock3 {
                money -= stock3
                playerStock3 += 1
                buyStocks()
            } else {
                clearScreen()
                print("You can't afford that.")
                sleep(3)
                buyStocks()
            }
        }
        if buyStock == "cancel" {
            start()
        } else {
            buyStocks()
        }
    }


    func refreshStocks(stock: Int) {
        lossCheck()
        var stockValue = 0
        var changeType = 0
        if stock == 1 {
            stockValue = stock1
        }
        if stock == 2 {
            stockValue = stock2
        }
        if stock == 3 {
            stockValue = stock3
        }
        let changeAmount = Int.random(in:1..<moneycap)
        if stockValue - changeAmount > 0 {
            changeType = Int.random(in:1..<4)
        } else {
            changeType = Int.random(in:2..<4)
        }
        if changeType == 1 {
            //print("\(stock) Adding \(changeAmount)") //debug
            stockValue -= changeAmount
            //print("\(stock) New price: \(stockValue)") //debug
        }
        if changeType == 2 {
            //print("\(stock) Subtracting \(changeAmount)") //debug
            stockValue += changeAmount
            //print("\(stock) New price: \(stockValue)") //debug
        }
        if changeType == 3 {
            //print("\(stock) PASSED!") //debug
        }
        if stock == 1 {
            stock1 = stockValue
        }
        if stock == 2 {
            stock2 = stockValue
        }
        if stock == 3 {
            stock3 = stockValue
        }
    }

    func crashFix() {
        if isCrash == true {
            let refreshChance = Int.random(in:1..<9)
            if refreshChance == 1 {
                isCrash = false
                moneycap = 50
                newsHeadline()
                print("\n\nThe stock market has recovered!")
                sleep(5)
            }
        }
    }

    func lossCheck() {
        if timeLimit == 0 {
        if hasPet == true {
            print("Oh no.")
            print()
            print("\(truePetName)'s surgery date has come.")
            sleep(2)
            print("Unfortunately, you can't afford it.")
            sleep(2)
            print("In a last ditch effort, you take up the vet's special loan offer.")
            sleep(2)
            print("The surgery goes well, but you discover something terrible!")
            sleep(2)
            print("A SOMEWHAT HARSH BUT ALSO FAIRLY REASONABLE INTEREST RATE!")
            sleep(1)
            print("\(truePetName) SURVIVES! But.. at what cost? (at least a couple years of manageable debt).")
            sleep(4)
            exit(0)
        } else {
            print("Oh no.")
            print()
            print("Your surgery date has come.")
            sleep(2)
            print("Unfortunately, you can't afford it.")
            sleep(2)
            print("In a last ditch effort, you take up the hospital's special loan offer.")
            sleep(2)
            print("The surgery goes well, but you discover something terrible!")
            sleep(2)
            print("A REALLY, REALLY, REALLY, REALLY INSANE NITEREST RATE!")
            sleep(1)
            print("YOU SURVIVE! But at what cost?! (A giant debt that'll follow you for the rest of your life, leaving you consistently unable to afford the things you want.")
            sleep(4)
            exit(0)
        }
        } else {
        }
    }
    func start(){
        win()
        crashFix()
        crash()
        clearScreen()
        print("You have \(timeLimit) weeks until the surgery is required. \n(Once enough money is obtained, buy it in the shop)\n")
        print("You have \(money) dollar(s).")
        print("You have \(playerStock1) stock(s) of Stock 1, individually priced at \(stock1)")
        print("You have \(playerStock2) stock(s) of Stock 2, individually priced at \(stock2)")
        print("You have \(playerStock3) stock(s) of Stock 3, individually priced at \(stock3)")
        print("type buy, sell, or wait.")
        let input = readLine()
        if input == "buy" {
            buyStocks()
        }
        if input == "help" {
            info()
        }
        if input == "news" {
            newsHeadline()
        }
        if input == "crashStocks" {
            crash()
        }
        if input == "giveStock" {
            playerStock1 += 1
            playerStock2 += 1
            playerStock3 += 1
            start()
        }
        if input == "sell" {
            sellStocks()
        }
        if input == "debug"{
            debugMode = true
            start()
        }
        if input == "wait" {
            if debugMode == false{
                clearScreen()
                timeLimit -= 1
                print("It's a new day.")
                sleep(4)
            }
            
            refreshStocks(stock:1)
            refreshStocks(stock:2) //Refresh toc
            refreshStocks(stock:3) //Refresh stock 3's price
            start() //When complete, restart start menu
        }
        if input == "robbie" { //If the user typed work
            Robbie() //Start the work function
        } else { //If input is not "work"
            start() //If an unaccounted for input is typed, reset start menu
        }
    }







    start() //Begins the game
