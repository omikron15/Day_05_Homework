def pet_shop_name(pet_shop)
  return pet_shop[:name]
end

def total_cash(pet_shop)
  return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, cash)
  pet_shop[:admin][:total_cash] += cash
end

def pets_sold(pet_shop)
  pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, num_pets_sold)
  pet_shop[:admin][:pets_sold] += num_pets_sold
end

def stock_count(pet_shop)
  return pet_shop[:pets].count
end

def pets_by_breed(pet_shop, breed)
  breed_matches = []
  for each_pet in pet_shop[:pets]
      breed_matches.push(each_pet) if each_pet[:breed] == breed
  end
return breed_matches
end

def find_pet_by_name(pet_shop, name)

  for each_pet in pet_shop[:pets]
    return each_pet if each_pet[:name] == name
  end
return nil
end

def remove_pet_by_name(pet_shop, name)

  for each_pet in pet_shop[:pets]
    if each_pet[:name] == name
        pet_shop[:pets].delete(each_pet)
    end
  end

return pet_shop

end

def add_pet_to_stock(pet_shop, new_pet)

  pet_shop[:pets].push(new_pet)

end

def customer_pet_count(customer)
  return customer[:pets].count
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets].push(new_pet)
end

def customer_can_afford_pet(customer, new_pet)
 price = new_pet[:price]
 funds = customer[:cash]

 if funds >= price
    return true
  else
    return false
  end

end

def sell_pet_to_customer(pet_shop, pet, customer)

if (pet != nil)&&((customer_can_afford_pet(customer, pet)))

    add_pet_to_customer(customer, pet)
    increase_pets_sold(pet_shop, 1)
    add_or_remove_cash(pet_shop, pet[:price])

    ## remove_pet_by_name(pet_shop, pet)

end

end
