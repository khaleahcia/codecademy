"""
Basta Fazoolin' project for Learn Python 3 course at Codecademy.

You've started a position as the lead programmer for the family-style Italian restaurant Basta Fazoolin' with My Heart. The restaurant has been doing fantastically and seen a lot of growth lately. You've been hired to keep things organized.
"""

# 1. At Basta Fazoolin' with my Heart our motto is simple: when you're here with family, that's great! We have four different menus: brunch, early-bird, dinner, and kids. Create a Menu class.
class Menu:
    
    # 2. Give Menu a constructor with the five parameters self, name, items, start_time, and end_time.
    def __init__(self, name, items, start_time, end_time):
        self.name = name
        self.items = items
        self.start_time = start_time
        self.end_time = end_time
    
    # 7. Give our Menu class a string representation method that will tell you the name of the menu. Also, indicate in this representation when the menu is available.
    def __repr__(self):
        self.representative_string = self.name + ' menu available from ' + self.start_time.strftime('%I:%M %p') + ' to ' + self.end_time.strftime('%I:%M %p') + '.'
        return self.representative_string
    
    # 9. Give Menu a method .calculate_bill() that has two parameters: self, and purchased_items, a list of the names of purchased items. Have calculate_bill return the total price of a purchase consisting of all the items in purchased_items.
    def calculate_bill(self, purchased_items):
        total_price = 0
        for item in purchased_items:
            total_price += self.items[item]
        return total_price

# 3. Let's create our first menu: brunch. Brunch is served from 11am to 4pm. The following items are sold during brunch: ...
import datetime as dt
brunch = Menu('Brunch', {'pancakes': 7.50, 'waffles': 9.00, 'burger': 11.00, 'home fries': 4.50, 'coffee': 1.50, 'espresso': 3.00, 'tea': 1.00, 'mimosa': 10.50, 'orange juice': 3.50}, dt.time(11), dt.time(16))

# 4. Let's create our second menu item early_bird. Early-bird Dinners are served from 3pm to 6pm. The following items are available during the early-bird menu: ...
early_bird = Menu('Early-bird Dinner', {'salumeria plate': 8.00, 'salad and breadsticks (serves 2, no refills)': 14.00, 'pizza with quattro formaggi': 9.00, 'duck ragu': 17.50, 'mushroom ravioli (vegan)': 13.50, 'coffee': 1.50, 'espresso': 3.00}, dt.time(15), dt.time(18))

# 5. Let’s create our third menu, dinner. Dinner is served from 5pm to 11pm. The following items are available for dinner: ...
dinner = Menu('Dinner', {'crostini with eggplant caponata': 13.00, 'ceasar salad': 16.00, 'pizza with quattro formaggi': 11.00, 'duck ragu': 19.50, 'mushroom ravioli (vegan)': 13.50, 'coffee': 2.00, 'espresso': 3.00}, dt.time(17), dt.time(23))

# 6. And let’s create our last menu, kids. The kids menu is available from 11am until 9pm. The following items are available on the kids menu.
kids = Menu('Kids', {'chicken nuggets': 6.50, 'fusilli with wild mushrooms': 12.00, 'apple juice': 3.00}, dt.time(11), dt.time(21))

# 8. Try out our string representation. If you call print(brunch) it should print out something like the following: brunch menu available from 11am to 4pm
print(brunch)

# 10. Test out Menu.calculate_bill(). We have a breakfast order for one order of pancakes, one order of home fries, and one coffee. Pass that into brunch.calculate_bill() and print out the price.
print(brunch.calculate_bill(['pancakes', 'home fries', 'coffee']))

# 11. What about an early-bird purchase? Our last guests ordered the salumeria plate and the vegan mushroom ravioli. Calculate the bill with .calculate_bill().
print(early_bird.calculate_bill(['salumeria plate', 'mushroom ravioli (vegan)']))

# Creating the Franchises
# 12. Basta Fazoolin’ with my Heart has seen tremendous success with the family market, which is fantastic because when you’re at Basta Fazoolin’ with my Heart with family, that’s great! We’ve decided to create more than one restaurant to offer our fantastic menus, services, and ambience around the country. First, let's create a Franchise class.
class Franchise:

    # 13. Give the Franchise class a constructor. Take in an address, and assign it to self.address. Also take in a list of menus and assign it to self.menus.
    def __init__(self, address, menus):
        self.address = address
        self.menus = menus

    # 15. Give our Franchises a string representation so that we’ll be able to tell them apart. If we print out a Franchise it should tell us the address of the restaurant.
    def __repr__(self):
        self.representative_string = "Located at " + self.address
        return self.representative_string
    
    # 16. Let’s tell our customers what they can order! Give Franchise an .available_menus() method that takes in a time parameter and returns a list of the Menu objects that are available at that time.
    def available_menus(self, time):
     avail_menus = []
     for menu in self.menus:
       if time >= menu.start_time and time < menu.end_time:
         avail_menus.append(menu)
     return avail_menus

# 14. Let’s create our first two franchises! Our flagship store is located at "1232 West End Road" and our new installment is located at "12 East Mulberry Street". Pass in all four menus along with these addresses to define flagship_store and new_installment.
flagship_store = Franchise("1232 West End Road", [brunch, early_bird, dinner, kids])
new_installment = Franchise("12 East Mulberry Street", [brunch, early_bird, dinner, kids])

# 17. Let’s test out our .available_menus() method! Call it with 12 noon as an argument and print out the results.
print(flagship_store.available_menus(dt.time(12)))

# 18. Let’s do another test! See what is printed if we call .available_menus() with 5pm as an argument and print out the results.
print(flagship_store.available_menus(dt.time(17)))

# Creating Business!
# 19. Since we’ve been so successful building out a branded chain of restaurants, we’ve decided to diversify. We’re going to create a restaurant that sells arepas! First let’s define a Business class.
class Business:
   
   # 20. Give Business a constructor. A Business needs a name and a list of franchises.
    def __init__(self, name, franchises):
        self.name = name
        self.franchises = franchises

# 21. Let’s create our first Business. The name is "Basta Fazoolin' with my Heart" and the two franchises are flagship_store and new_installment.
basta_fazoolin = Business("Basta Fazoolin' with my Heart", [flagship_store, new_installment])

# 22. Before we create our new business, we’ll need a Franchise and before our Franchise we’ll need a menu. The items for our Take a’ Arepa available from 10am until 8pm are the following:... Save this to a variable called arepas_menu.
arepas_menu = Menu('Arepas', {'arepa pabellon': 7.00, 'pernil arepa': 8.50, 'guayanes arepa': 8.00, 'jamon arepa': 7.50}, dt.time(10), dt.time(20))

# 23. Next let’s create our first Take a’ Arepa franchise! Our new restaurant is located at "189 Fitzgerald Avenue". Save the Franchise object to a variable called arepas_place.
arepas_place = Franchise("189 Fitzgerald Avenue", [arepas_menu])


# 24. Now let’s make our new Business! The business is called "Take a' Arepa"!
take_a_arepa = Business("Take a' Arepa", [arepas_place])

# 25. Congrats! You created a system of classes that help structure your code and perform all business requirements you need. Whenever we need a new feature we’ll have the well-organized code required to make developing and shipping it easy.