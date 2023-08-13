# Sal's Shipping project for Learn Python 3 course at Codecademy

# Package weight
weight = 41.5

# Ground shipping
ground = 20
if weight < 2:
  ground += 1.5 * weight
elif weight <= 6:
  ground += 3 * weight
elif weight <= 10:
  ground += 4 * weight
else:
  ground += 4.75 * weight

# Ground Shipping Premium
ground_premium = 125

# Drone shipping
if weight < 2:
  drone = 4.5 * weight
elif weight <= 6:
  drone = 9 * weight
elif weight < 10:
  drone = 12 * weight
else:
  drone = 14.25 * weight

# Shipping cost printout
print("Ground shipping cost:", '${:,.2f}'.format(ground))
print("Ground shipping premium cost:", '${:,.2f}'.format(ground_premium))
print("Drone shipping cost:", '${:,.2f}'.format(drone))