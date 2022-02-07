# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/0-classes.rb

#stay in main folder not code-along to obtian all the data

# String Class
bens_favorite_food = "sushi"
puts bens_favorite_food.upcase
puts bens_favorite_food.class

brians_favorite_food = "tacos"
puts brians_favorite_food

number_of_tacos = 5
puts number_of_tacos
puts number_of_tacos.class 

# String Methods

# Custom Class #creating factory but not creating virtual dogs yet
class Dog
    def speak
            puts "Woof" #inital puts = space. additional below will be another line
    end
end

jenkins = Dog.new #new object/factory
jenkins.class
jenkins.speak

lassie = Dog.new
lassie.speak
