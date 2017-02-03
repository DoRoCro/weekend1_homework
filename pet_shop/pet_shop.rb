def pet_shop_name(pet_shop_object)
  # assumes structure in object passed in matches 
  # pet_shop_object{ :name => string}
  return pet_shop_object[:name]
end

def total_cash(pet_shop_object)
  # assumes structure in object passed in matches 
  # pet_shop_object{ :admin => { :total_cash => integer}}
  return pet_shop_object[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop_object,cash)
  # assumes structure in object passed in matches 
  # pet_shop_object{ :admin => { :total_cash => integer}}
  pet_shop_object[:admin][:total_cash] += cash
  return pet_shop_object[:admin][:total_cash]
end

def pets_sold(pet_shop_object)
  # assumes structure in object passed in matches 
  # pet_shop_object{ :admin => { :pets_sold => integer}}
  return pet_shop_object[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop_object, num_pets)
  # assumes structure in object passed in matches 
  # pet_shop_object{ :admin => { :pets_sold => integer}}
  pet_shop_object[:admin][:pets_sold] += num_pets
  return pet_shop_object[:admin][:pets_sold]
end

def stock_count(pet_shop_object)
  # assumes each element of pet_shop_object represents 1 pet
  stock_count = 0
  for pet in pet_shop_object[:pets]
    stock_count += 1
  end
  return stock_count
end

def pets_by_breed(pet_shop_object, breed_name)
  # assumes pet_shop_object{ :pets => { :breed => string}}
  pets_list = []
  for pet in pet_shop_object[:pets]
     pets_list.push(pet)  if (pet[:breed] == breed_name) 
  end
  return pets_list
end

def find_pet_by_name(pet_shop_object, pet_name)
  # search through pet_shop for required pet, break out
  # of function on first match, else return nil
  # requires { pets: => [{name: => string}, {...}]}
  for pet in pet_shop_object[:pets]
    return pet if ( pet[:name] == pet_name )
  end
  return
end

def remove_pet_by_name(pet_shop_object, pet_to_remove) 
  # DRY - use find instead of enumerating :pets array
  return pet_shop_object[:pets].delete( 
    find_pet_by_name(pet_shop_object, pet_to_remove)
    )
end

def add_pet_to_stock(pet_shop_object, new_pet)
  # assumes pet_shop_object{ :pets => [{ :breed => string}]}
  return pet_shop_object[:pets].push(new_pet)
end

def customer_pet_count(customer)
  # count elements in customer[:pets] array
  return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end