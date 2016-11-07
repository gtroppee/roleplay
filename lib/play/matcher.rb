class Matcher
  constructor :players, :rules, accessors: true

  def matches
    players.flat_map do |player|
      rules.map do |rule| 
        evaluation = player.instance_eval(&rule.block)
        Match.new( player: player, rule: rule ) if evaluation
      end
    end.compact
  end
end