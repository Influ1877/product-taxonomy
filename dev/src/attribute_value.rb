class AttributeValue
  class << self
    def from_json(json)
      new(
        id: json["id"],
        name: json["name"],
      )
    end
  end

  attr_reader :id, :name

  def initialize(id:, name:)
    @id = id.to_s
    @name = name
  end

  def gid
    @gid ||= "gid://shopify/Taxonomy/Attribute/#{id.gsub('-', '/')}"
  end

  def to_h
    {
      id: gid,
      name:,
    }
  end
end