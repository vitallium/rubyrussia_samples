# typed: true

require 'sorber-runtime'

require 'person'

class AddressBook
  extend T::Sig

  attr_reader :persons

  sig {void}
  def initialize
    @persons = []
  end

  sig {params(person: Person).returns(T::Array[Person])}
  def add(person)
    @persons << person
  end
end
