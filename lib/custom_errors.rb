# you must give the get_married method an argument of an instance of the person class!
# Beyonce

# Person
# #get_married
# when passed a Person instance as an argument
# sets the the partners of each person
# when passed something other than a Person instance as an argument
# outputs an error message to the terminal

class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    if person.is_a?(Person)
      self.partner = person
      person.partner = self
    else
      begin
        raise PartnerError
      rescue PartnerError => error
        puts error.message
      end
    end
  end

  class PartnerError < StandardError
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name