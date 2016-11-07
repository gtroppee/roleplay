class Ruleset
  @@rules = []

  def self.rule(name, &block)
    @@rules << Rule.new( name: name, block: block )
  end

  def rules
    @@rules
  end

  rule :berserker do
    strength > 90 &&
      intelligence < 50
  end

  rule :magician do
    intelligence > 80
  end

  rule :bayraktar do
    intelligence.between?(50, 60) &&
      strength > 60
  end
end
