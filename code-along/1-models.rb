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
company = Company.new{values}
company.save
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
company = Company.new{values}
company.save
puts "There are #{Company.all.count} companies"

# 3. query companies table

# 4. read column values from row

# 5. update attribute value
