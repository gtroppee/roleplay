class Rule
  constructor :name, :block, accessors: true

  def to_s
    name
  end
end