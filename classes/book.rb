require_relative 'item'

class Book < Item
  attr_accessor :id, :publisher, :cover_state

  def initialize(publisher:, cover_state:, publish_date:, id: SecureRandom.random_number(1..1000))
    super(publish_date)
    @id = id
    @publisher = publisher
    @cover_state = cover_state
  end

  private

  def can_be_archived?
    super || @cover_state == 'bad'
  end
end