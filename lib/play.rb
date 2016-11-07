require 'constructor'

require_relative 'play/decision'
require_relative 'play/player'
require_relative 'play/rule'
require_relative 'play/ruleset'
require_relative 'play/match'
require_relative 'play/matcher'

# Define the players with initial characteristics
players = [
  Player.new( name: 'Maia',   strength: 70, intelligence: 90 ),
  Player.new( name: 'Kevin',  strength: 95, intelligence: 45 ),
  Player.new( name: 'Thomas', strength: 65, intelligence: 50 )
]

rules   = Ruleset.new.rules

matches = Matcher.new( players: players, rules: rules ).matches

decision = Decision.new(matches: matches)

puts decision.to_s