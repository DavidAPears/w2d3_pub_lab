class Customer

  attr_reader :name, :wallet
  # attr_accessor :till

  def initialize (name, wallet, age, drunkenness)
    @name = name
    @wallet = wallet
    @age = age
    @drunkenness = drunkenness
  end


end
