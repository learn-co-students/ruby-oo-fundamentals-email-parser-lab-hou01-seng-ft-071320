# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser 
    attr_accessor :emails
    
    def initialize (emails)
        @emails = emails
    end 

    def parse
        #Split Emails by comma and spaces
        @emails = @emails.split(/[,\s]+/)

        # Remove any white spaces around the individual email addresses
        counter = 0
        while counter < @emails.length do
            @emails[counter] = @emails[counter].strip()
            counter += 1
        end

        # Return only unique elements in the array.
        return @emails.uniq
    end
    
end