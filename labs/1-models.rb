# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
#sqlite3 db/development.sqlite3 
#rails runner data.rb

apple = Company.where({ name: "Apple"})[0]
puts apple.id

amazon = Company.where({ name: "Amazon"})[0]
tesla = Company.where({ name: "Tesla"})[0]

# 2. create 1-2 new contacts for each company (they can be made up)
amazonc = Contact.new
amazonc.first_name = "Andy"
amazonc.last_name = "Jassy"
amazonc.email = "andy@amazon.com"
amazonc.phone_number = "777-777-7777"
amazonc.company_id = amazon.id
amazonc.save

applec = Contact.new
applec.first_name = "Craig"
applec.last_name = "Federighi"
applec.email = "craig@apple.com"
applec.phone_number = "888-888-8888"
applec.company_id = apple.id
applec.save

teslac = Contact.new
teslac.first_name = "Elon"
teslac.last_name = "Musk"
teslac.email = "elon@tesla.com"
teslac.phone_number = "999-999-9999"
teslac.company_id = tesla.id
teslac.save

applec = Contact.new
applec.first_name = "Tim"
applec.last_name = "Cook"
applec.email = "tim@apple.com"
applec.phone_number = "111-111-1111"
applec.company_id = apple.id
applec.save

# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:
puts "There are #{Contact.all.count} contacts"
puts Contact.all.inspect

contacts = Contact.all
for contact in contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
end

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com

