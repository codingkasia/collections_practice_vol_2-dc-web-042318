# your code goes here
def begins_with_r(str)
  str.all? do |el|
    el[0] === "r"
  end 
end
str = ["rob", "kasia"]
str2 = ["rob", "rusty"]
begins_with_r(str)
begins_with_r(str2)

def contain_a(arr)
  new = []
  arr.each do |el| 
    if(el.include?("a"))
      new << el 
    end
  end
  new
end
names = ["earth", "fire", "wind", "water","heart"]
contain_a(names)

def first_wa(arr)
  new = []
  arr.each do |l|
    if((l[0] === "w") && (l[1] === "a"))
      return l 
  end 
end 
end
array = ["cawady", "ghhxwacky", "wall"]
first_wa(array)

def remove_non_strings(arr)
  arr.delete_if do |el| 
    !(el.is_a?(String))
  end
  arr
end

mix = ["blake", 1, :hello]
remove_non_strings(mix)

def count_elements(arr)
 arr.each_with_object(Hash.new(0)) { |g,h| h[g[:name]] += 1 }.map { |name, count| { :name=>name, :count=>count } }
end
names = [{:name => "blake"}, {:name => "blake"}, {:name => "ashley"}]
count_elements(names)

def merge_data(keys, data)
  keys.merge!(data)
end
def find_cool(cool)
  keep_if {|key, value| value === "cool"} 
end
cool = [{:name => "blake",:temperature => "cool"}, {:name => "blake",:temperature => "blue"}]
find_cool(cool)