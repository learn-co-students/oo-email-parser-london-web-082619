# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser

    attr_accessor :emails

    @@all = []

    def initialize(emails)
        @emails = emails

        @@all << self
    end

    #regex for the win baby!
    def parse
        @emails.split(/\s|, /).uniq
    end

end

