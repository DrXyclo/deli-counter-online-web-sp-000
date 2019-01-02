require 'pry'
### NOTES 

# blog worthy

### Code ###
# katz_deli = []
other_deli = ["Logan", "Avi", "Spencer"]
# another_deli = ["Amanda", "Annette", "Ruchi", "Jason", "Logan", "Spencer", "Avi", "Joe", "Rachel", "Lindsey"]


#=begin

def line(katz_deli)

line_array = []
  if katz_deli != []
    katz_deli.each.with_index(1) do |person, index|  
       line_array << ("#{index}. #{person} ")
        end
         
  line_array_last = line_array.pop                   ## removes last element with extra space
  line_array_last[line_array_last.length-1] = ""     ## determines length to elminiate extra space
  line_array << line_array_last                      ## shovels last element without extra space to the array
  puts "The line is currently: #{line_array.join}"
  else
    puts "The line is currently empty." 
  end 
end
  
# line(other_deli)

def take_a_number(katz_deli, person_joining_the_end_of_the_line)
  if katz_deli != []
    katz_deli << person_joining_the_end_of_the_line
    reverse_katz_deli_array = []
    katz_deli.each.with_index(1) do |person, index|  
       reverse_katz_deli_array << "Welcome, #{person}. You are number #{index} in line."
       puts reverse_katz_deli_array.last 
        end
    
  else
  katz_deli << person_joining_the_end_of_the_line
  katz_deli.each.with_index(1) do |person, index|
    puts "Welcome, #{person}. You are number #{index} in line."
        end
  end 
  
end 
  
take_a_number(other_deli, "Grace")

=begin 
  describe "#take_a_number" do
    context "there is nobody in line" do
      it "should add a person to the line" do
        expect($stdout).to receive(:puts).with("Welcome, Ada. You are number 1 in line.")
        take_a_number(katz_deli, "Ada")
        expect(katz_deli).to eq(["Ada"])
      end
    end
 

 
#  array = ["kiwi", "durian", "starfruit"]
# array =["kiwi"]
#array = ["kiwi", "durian"]
# array = ["kiwi", "durian", "starfruit", "mangos", "dragon fruits"]
#array = ["kiwi", "durian", "starfruit", "mangos", "dragon fruits", "lychees", "pomelos"]

def oxford_comma(array) 
  if array.length < 3 
     array.join(" and ")
   # puts array
  else
  array_last = array.pop 
  array.map {|i| i << ", "}
  array << "and " 
  array << array_last
  binding.pry
      array.join
  end
end 

  oxford_comma(array)
=end  