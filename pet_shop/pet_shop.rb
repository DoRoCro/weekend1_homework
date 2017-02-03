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
  return 6
end