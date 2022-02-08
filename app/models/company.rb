class Company < ApplicationRecord
    has_many :contacts
    # def contacts
    #     Contact.where({ company_id: id })
    # end
end

#applicationrecord = ORM pulled in
#application has a lot of prewritten code to connect SQL with Ruby
#rails runner pulls instead of ruby