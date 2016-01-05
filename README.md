# brief
Design a vending machine using a programming language of your choice. The vending machine should perform as follows:

- Once an item is selected and the appropriate amount of money is inserted, the vending machine should return the correct product.
- It should also return change if too much money is provided, or ask for more money if insufficient funds have been inserted.
- The machine should take an initial load of products and change. The change will be of denominations 1p, 2p, 5p, 10p, 20p, 50p, £1, £2.
- There should be a way of reloading either products or change at a later point.
  ^^^ read a CSV file and stock like that?!
The machine should keep track of the products and change that it contains.


### product
- name (twix, salt and vinegar crisps)
- price (eg 159 for £1.59)

### slot
- key
- product
- quantity (0 - out of stock?)

### Coin
- name (50p)
- value (eg 50)

  onePence < Coin
    1p, 1
  fiftyPence < Coin
    50p, 50
  onePound < Coin
    £1, 100
  twoPounds < Coin
    £2, 200

### machine
- list<product>
- list<coin>


### order
- on_slot
- coins_entered
- coins_entered_total()
- price outstanding()


### coinHandler
- add_coins([fiftyPence, onePound]) -> 150

- split_into_coins(100) -> [onePound] or [fiftyPence, fiftyPence] or all sorts of combos..
  > but this depends on coin stock...
- 

### gui
- user_input_to_coin_convertor('50p') -> fiftyPence
- format_as_pounds(150) -> £1.50



### Command line interface 
... or API REST endpoint with front end eventually?

products in stock: 
(cheers http://www.gemvending.com/
        http://sqa.fyicenter.com/Online_Test_Tools/Random_Price_Currency_Value_Generator.php
        https://www.random.org )

#01 - £1.80 - [15] - cadbury snack
#02 - £1.83 - [7] - cadburys dairy milk
#03 - £0.89 - [11] - coke
#04 - £1.26 - [8] - coke zero
#05 - £1.37 - [9] - diet coke
#06 - £1.11 - [3] - doritos cheese
#07 - £1.57 - [1] - doritos chilli
#08 - £0.37 - [13] - dr pepper
#09 - £1.49 - [10] - fanta orange
#10 - £0.64 - [8] - five alive
#11 - £1.11 - [3] - kit kat
#12 - £0.37 - [4] - mars bar
#13 - £0.34 - [1] - mccoys bacon
#14 - £1.71 - [14] - mccoys cheese & onion
#15 - £1.58 - [3] - mccoys flaming steak
#16 - £0.56 - [9] - mini cheddars
#17 - £1.50 - [1] - mint aero
#18 - £0.99 - [8] - oasis citrus punch
#19 - £1.85 - [9] - oasis summer fruits
#20 - £0.69 - [15] - oreo
#21 - £0.59 - [8] - powerade berry
#22 - £1.84 - [6] - powerade cherry
#23 - £1.58 - [4] - powerade orange
#24 - £0.47 - [4] - snickers
#25 - £0.92 - [5] - sprite
#26 - £1.87 - [10] - toffee crisp
#27 - £1.49 - [10] - twirl
#28 - £0.65 - [6] - twix
#29 - £1.24 - [9] - walkers cheese & onion
#30 - £1.31 - [7] - walkers ready salted
#31 - £0.35 - [1] - walkers salt & vinegar
#32 - £1.12 - [10] - yorkie

enter produce number...
> 17

17 - mint aero
1 in stock
cost: £1.50
Please enter a coin
> £1

17 - mint aero
cost: £1.50
balance: £1.00
Please enter a coin
> £1

17 - mint aero
cost: £1.50
balance: £2.00
Transaction complete! Returning:
> Mint Aero
> 50p