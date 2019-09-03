# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

#USAGE:

require 'pry'

class EmailAddressParser

    @@all = []
    attr_accessor :email_addresses

    def initialize(email_addresses)
        @email_addresses = email_addresses
        @@all << self
    end

    def self.all
        @@all
    end

    def parse
        emails = self.email_addresses.split(" ")
        # emails.each { |email| email.chomp(",") 
        emails.each do |email|
            if email[email.length - 1] == ','
                email.chomp!(',')
            end
        end
        return emails.uniq
    end

    
end

# email_addresses = "john@doe.com, person@somewhere.org"
# parser = EmailAddressParser.new(email_addresses)
 
# parser.parse
# # => ["john@doe.com", "person@somewhere.org"]


# binding.pry
# 'save'