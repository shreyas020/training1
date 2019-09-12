#program1.rb
=begin 
puts 'helloeveryone'

#multiple statement in one line can be execuited by seperated by (;)
puts 'HelloEveryone' ; puts 'Good Morning'

#numbers with simple arthematic
puts 5+7
puts 8-5
puts 8.4-2.5
puts 5.2-8
puts 5*5
puts 64/6
puts 2.4/2

#madulo operator with different sign
puts 11% 4
puts -11% 4
puts 11% -4
puts -11% -4

puts nil || 2010  
puts false || 4544 
puts "ruby" || 2008 
puts 2020 or 2010
puts 2020||2010

#parallel assignment
x,y,z=[1,2,3]
puts x
puts y
puts z

# string is enclosed with "" or ''
puts 'Good'
puts "morning"
#string concatonation
puts 'Good' + ' Morning'
string ='good'+'morning'
puts string
# display strings multiple time
puts 'GOOD ' *5
puts 'ls'

#variables and assignment
s='hello' ; x=2 #defining local variable
puts s ; puts x
#defining conststant
PI=3.14
puts PI
#converstion (.to_i, .to_f, .to_s)
var1 =5 ; var2='8'
puts var1 + var2.to_i
# appending to a string   we use (<< )
a = 'Good '  
a<<'Morning. 
welcome to my word ...'  
puts a

#Getting an input from user
puts 'Enter your current city'
STDOUT.flush
city=gets.chomp
puts 'your entered input is'
puts city

puts city.length # shows length of characters

puts 'i love ruby'.length
s = 4454  
puts s.class # to know the type of data

# methods concepts and its types
def hello
    puts 'SARANYU'
end
hello

def hello
    'SHREYAS'
end
puts hello

#method with argument
def hello(name)
    'SHREYAS ' + name
end
puts(hello('MANJU'))

def hello name
    'SHERYAS '+name
end
puts hello 'MANJU'

def mtd(arg1="Divya", arg2="Shashank", arg3="Shankar")  
    "#{arg1}, #{arg2}, #{arg3}."  
end  
puts mtd  
puts mtd("ruby")  

puts "100 * 5 = #{100 * 5}, #{10*5}" 

def old
    'old method'
end
alias newm old
def old
    'old improved'
end
puts newm
puts old

def opt_args(a,*x,b) 
    x.inspect
    puts a,x,b
end
opt_args(2,'ss','d' , 4)

def mtd(a=99, b=a+1)  
    [a,b]  
end  
puts mtd

def downer(string)  
  string.downcase  
end  
a = "HELLO"  
downer(a)  
puts a     

puts String.instance_methods.sort

#String comparision with different
s1 = 'Jonathan'  
s2 = 'Jonathan'  
s3 = s1  
if s1 == s2  
  puts 'Both Strings have identical content'  
else  
  puts 'Both Strings do not have identical content'  
end  
if s1.eql?(s2)  
  puts 'Both Strings have identical content'  
else  
  puts 'Both Strings do not have identical content'  
end  
if s1.equal?(s2)  
  puts 'Two Strings are identical objects'  
else  
  puts 'Two Strings are not identical objects'  
end  
if s1.equal?(s3)  
  puts 'Two Strings are identical objects'  
else  
  puts 'Two Strings are not identical objects'  
end  

name1=%w{ iam the one and god is one}
puts name1[1]

puts Encoding.list

puts "λ".length     
puts "SHREYAS".bytesize   
puts "λ".encoding

unless 'sh'.length == 2  
    puts "Usage: program.rb 23 45"  
    exit
end  

#using of while loop
count=0
while count<=30
  puts count
  count +=3
end

#turnary operator(?:)
age=15
puts (13...18).include?(age) ? 'teenager' : 'not a teenager'

#statement modifiers
participants=3000
puts 'enrollment will stop' if participants > 2500


#case expressions
year=gets.chomp
case 
when (year%400)==0 then puts


flavour='mango'
var4 = [80.5, flavour, [true, false]]  
puts var4[2] [1]

#RUBY Ranges 
digits = -1..9  
puts digits.include?(9)
puts digits.include?(9)
puts digits.min                    
puts digits.max                    
puts digits.reject {|i| i < 5 } 
digits = -1...9  
puts digits.include?(-1)
puts digits.min                    
puts digits.max                    
puts digits.reject {|i| i < 5 }  


#ruby hashes
h={'dog'=>'broony' , 'cat'=>'billy' , 'cow'=>'gowri', 12=>'number'}
puts h.length
puts h['cat']
puts h
puts h[12]

#hashes with symbol
people = Hash.new 
#puts people.class
people[:nickname] = 'Bruce Lee'  
people[:language] = 'Marathi'  
people[:lastname] = 'Talim'  
puts people[:lastname]

#another type
h = {nickname: 'IndianGuru', language: 'Marathi', lastname: 'Talim'}  
puts h  

word_list_one = ['24/7', 'multi-Tier', '30,000 foot', 'B-to-B', 'win-win', 'front-end', 
                 'web-based', 'pervasive', 'smart', 'six-sigma', 'critical-path', 'dynamic'] 
word_list_two = ['empowered', 'sticky', 'value-added', 'oriented', 'centric', 'distributed', 
                 'clustered', 'branded', 'outside-the-box', 'positioned', 'networked', 'focused', 
                 'leveraged', 'aligned', 'targeted', 'shared', 'cooperative', 'accelerated'] 
word_list_three = ['process', 'tipping-point', 'solution', 'architecture', 'core competency', 
                   'strategy', 'mindshare', 'portal', 'space', 'vision', 'paradigm', 'mission']  
  
one_len = word_list_one.length  
two_len = word_list_two.length  
three_len = word_list_three.length  
  
rand1 = rand(one_len)  
rand2 = rand(two_len)  
rand3 = rand(three_len)  
  
phrase = word_list_one[rand1] + " " + word_list_two[rand2] + " " + word_list_three[rand3]  
  
puts phrase  


File.open('read.txt', 'r') do |f1|
  while line=f1.gets
    puts line
  end
end
File.open('read.txt', 'w') do |f2|
  f2.puts 'Created by Shreyas'
end 

require 'find'  
Find.find('./') do |f|  
  type = case  
         when File.file?(f) then "F"  
         when File.directory?(f) then "D"  
         else "?"  
         end  
  puts "#{type}: #{f}"  
end  
=end
n=[1,2,3,4,5]
puts n[1]
puts n.[](1)