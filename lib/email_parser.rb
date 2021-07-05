# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    @@all=[]

    attr_accessor :email

    def initialize(email)
        @email = email
        @@all << self
    end

    def parse
        self.email.split(/\s|, /).uniq
    end

end