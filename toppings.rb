toppings = ["pickles", "mushrooms", "bacon"]

def hamburger(toppings)
  toppings.map do |topping|
    print "I love #{topping} on my burgers!"
  end
end

hamburger(toppings)
