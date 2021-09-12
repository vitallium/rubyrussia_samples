# typed: true

require 'sorbet-runtime'

class Person
  extend T::Sig

  attr_reader :name, :age

  sig do
    params(name: String, age: Integer).void
  end
  def initialize(name, age)
    @name = name
    @age = age
  end
end
