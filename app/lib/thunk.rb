class Thunk
  THUNKS = []

  def self.all
    THUNKS.map(&method(:new))
  end

  def self.create(*args)
    new(*args).save
  end

  attr_reader :body, :url

  def initialize(attributes = Hash.new)
    @body = attributes.fetch("body") { "" }
    @url = attributes.fetch("url") { "" }
  end

  def save
    THUNKS << to_h
    self
  end

  def to_h
    {
      "body" => body,
      "url" => url,
    }
  end
  alias_method :to_hash, :to_h
end
