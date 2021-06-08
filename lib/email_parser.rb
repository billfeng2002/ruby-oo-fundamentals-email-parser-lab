# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require "pry"

class EmailAddressParser
  def initialize(emails)
    @emails = emails
  end

  def parse
    addresses = @emails
    addresses=addresses.split(" ")
    #binding.pry
    parsed=[]
    addresses.length.times do |index|
        parsed << addresses[index].split(",")
        #binding.pry
    end
    #binding.pry
    parsed.flatten.uniq
  end
end

#emailParser=EmailAddressParser.new("gmail.com hotmail.com")
#binding.pry
#puts emailParser.parse