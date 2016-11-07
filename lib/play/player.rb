class Player
  constructor :name, 
              :strength, 
              :intelligence, 
              accessors: true

  alias to_s name
end