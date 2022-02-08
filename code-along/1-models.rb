# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb
#models (ORM) connect SQL (database) to Ruby (backend)
#we are using ActiveRecord
#model name is singular. table name is plural
#refer to cheatsheet at 31:46mins

# **************************
# Don't change or move
Company.destroy_all
# **************************
#kills and deletes all rows in table
#add rerun with new UI

# 1a. check out the schema file
#refer to db
#sqlite3 db/development.sqlite3 

# 1b. check out the model file
puts "There are #{Company.all.count} companies" #company class defined in models >company.rb
#SELECT COUNT(*) FROM companies
#cat log/development.log 

# 2. create new companies
values = {
    name: "Apple",
    url: "https://apple.com",
    city: "Cupertino",
    state: "CA"
}
apple = Company.new(values)
apple.save
puts "There are #{Company.all.count} companies"

#Company create (0.3ms) SQL equivalent

#script (built by teacher) to just look at SQL table
#rails runner data.rb

values = {
    name: "Amazon",
    url: "https://amazon.com",
    city: "Seattle",
    state: "WA"
}
amazon = Company.new(values)
amazon.save
puts "There are #{Company.all.count} companies"

#individual assignment below
# company = Company.new
# company.write_attribute(:name, "Tesla")
# company.write_attribute(:url, "https://tesla.com")
# company.write_attribute(:city, "Palo Alto")
# company.write_attribute(:state, "CA")
# company.save
# puts "There are #{Company.all.count} companies"

# company = Company.new
# company.name = "Tesla"
# company.url = "https://tesla.com"
# company.city = "Palo Alto"
# company.state = "CA"
# company.save
# puts "There are #{Company.all.count} companies"

tesla = Company.new
tesla.name = "Tesla"
tesla.url = "https://tesla.com"
tesla.city = "Palo Alto"
tesla.state = "CA"
tesla.save
puts "There are #{Company.all.count} companies"

# 3. query companies table

# puts Company.all.inspect

# companies = Company.where({ state: "CA"})
# puts companies.inspect

company = Company.where({ state: "CA", name: "Apple" })[0]
puts company.inspect
# 0 = one array

# 4. read column values from row
# puts "#{apple.read_attribute(:name)} has a website: #{apple.read_attribute(:url)}"
puts "#{apple.name} has a website #{apple.url}."

# 5. update attribute value
apple.slogan = "Think Different."
apple.save
puts apple.inspect

#delete value errors
tesler = Company.new({ name: "Tesler"})
tesler.save
puts "There are #{Company.all.count} companies"
tesler.destroy
#destroy all already does this but this destroys just the one row
puts "There are #{Company.all.count} companies"