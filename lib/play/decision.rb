class Decision
  constructor :matches, accessors: true

  def to_s
    <<~HEREDOC

      ########################

      #{results}

      ########################

    HEREDOC
  end

  private

  def results
    matches_by_player.map do |player, matches|
      "#{player} can play as: #{matches.map(&:rule_name).join(', ')}"
    end.join("\n")
  end

  def matches_by_player
    matches.group_by(&:player)
  end
end