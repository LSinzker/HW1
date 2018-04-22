
def anagrams(array)
  w_hash = Hash.new #declared because it's used inside a black
  aux = Array.new

  array.each{|item| w_hash[item] = item.downcase.split("").sort.join}

  s_hash = w_hash.each_with_object({}){|(k,v),g| (g[v] ||= []) << k} #change hash key with hash values
  s_hash.map{|k,v| aux << v}
end