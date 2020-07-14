# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

emails_out = nil

class EmailAddressParser
    attr_accessor :emails

    def initialize(email_list)
        @emails = email_list
    end

    def parse
        @emails.delete(',').split.uniq    
    end
end

