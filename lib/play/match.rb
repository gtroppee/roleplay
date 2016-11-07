class Match
  constructor :rule, :player, accessors: true

  def rule_name
    rule.name
  end
end