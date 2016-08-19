class UserAnalytics

def self.run(user)
    return {
      name: user.username, 
      tagline: user.tagline,
      email: user.email, 
      average_score: user.average_score, 
      games: self.games(user), 
      questions_right: self.questions_right(user), 
      questions_wrong: self.questions_wrong(user)}
  end

  def self.games(user)
    games = Game.where(user_id: user.id)
    return games.each_with_object({}) do |game, hash|
      game_hash = {}
      game_hash["topic"] = game.board.topic
      game_hash["date"] = game.created_at
      game_hash["score"] = game.final_score
      hash[game.id] = game_hash
    end
  end

  def self.questions_right(user)
    QuestionHashCreator.run(user.questions_got_right)
  end

  def self.questions_wrong(user)
    QuestionHashCreator.run(user.questions_got_wrong)
  end

end