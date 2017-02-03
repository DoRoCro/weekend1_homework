def pet_shop_name(pet_shop_object)
  # assumes structure in object passed in matches 
  # pet_shop_object{ :name => string}
  return pet_shop_object[:name]
end

def total_cash(pet_shop_object)
  # assumes structure in object passed in matches 
  # pet_shop_object{ :admin => { total_cash: => integer}}
  return pet_shop_object[:admin][:total_cash]
end
