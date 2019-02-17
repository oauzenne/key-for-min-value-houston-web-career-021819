def key_for_min_value(name_hash)
  prev = 0
  lowKey = {}
  if name_hash.empty? 
    return nil 
  end
  name_hash.collect do |key, value|
    if prev == 0
      prev = value
      lowKey = key
    end
    if value < prev
      prev = value 
      lowKey = key
    end
  end
  lowKey
end 
