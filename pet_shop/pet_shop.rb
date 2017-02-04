# assumed object structure
#   pet_shop_object = {
#     :pets => [ {pet}, {pet} ...],
#     :admin => { {} {} ...},
#     :name => string
#     ...
#   }
#   pet = {
#     :name => string
#     :pet_type => :symbol
#     :breed => string
#     :price => integer
#     ...
#   }
#   customer = {
#     :name => string
#     :pets => [ string, string, ... ]
#     :case => integer
#   }

def pet_shop_name(pet_shop_object)
  return pet_shop_object[:name]
end

def total_cash(pet_shop_object)
  return pet_shop_object[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop_object,cash)
  pet_shop_object[:admin][:total_cash] += cash
  return pet_shop_object[:admin][:total_cash]
end

def pets_sold(pet_shop_object)
  return pet_shop_object[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop_object, num_pets)
  pet_shop_object[:admin][:pets_sold] += num_pets
  return pet_shop_object[:admin][:pets_sold]
end

def stock_count(pet_shop_object)
  # assumes each element of pet_shop_object[:pets] represents 1 pet
  stock_count = 0
  for pet in pet_shop_object[:pets]
    stock_count += 1
  end
  return stock_count
end

def pets_by_breed(pet_shop_object, breed_name)
  pets_list = []
  for pet in pet_shop_object[:pets]
     pets_list.push(pet)  if (pet[:breed] == breed_name) 
  end
  return pets_list
end

def find_pet_by_name(pet_shop_object, pet_name)
  # search through pet_shop for required pet, break out
  # of function on first match, else return nil
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
  return pet_shop_object[:pets].push(new_pet)
end

def customer_pet_count(customer)
  # count elements in customer[:pets] array
  return customer[:pets].length
end

def add_pet_to_customer(customer, new_pet)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer,pet)
  return ( customer[:cash] >= pet[:price] ) ? true : false  
end

def sell_pet_to_customer(pet_shop_object, pet, customer)
  customer[:pets].push(pet)
  pet_shop_object[:admin][:pets_sold] += 1
  pet_shop_object[:admin][:total_cash] += pet[:price] 
end
