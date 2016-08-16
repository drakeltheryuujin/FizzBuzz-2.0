# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Board.destroy_all
Category.destroy_all
Question.destroy_all
User.destroy_all
Player.destroy_all
Option.destroy_all

board = Board.create(topic: 'ruby')
board2= Board.create(topic: 'sql')
board3 = Board.create(topic: 'javascript')
board4 = Board.create(topic: 'html')
board5 = Board.create(topic: 'css')
board6 = Board.create(topic: 'react')

category = Category.create(board_id: board.id, name: 'Variables, Strings, & Numbers')
category2= Category.create(board_id: board.id, name: 'Arrays, Conditionals, & Loops')
category3 = Category.create(board_id: board.id, name: 'Scope & Methods')
category4 = Category.create(board_id: board.id, name: 'Symbols, Array Methods, & Hashes')
category5 = Category.create(board_id: board.id, name: 'Object Oriented Programming')

question = Question.create(category_id: category.id, difficulty: '200', content: 'What does the following expression evaluate to?
                                                                                  2 ** 3"')
question3 = Question.create(category_id: category.id, difficulty: '400', content: 'What does the following code return?
                                                                                  def add(x, y)
                                                                                    return(x + y)
                                                                                  end 
                                                                                  add(3, 5)')
question4 = Question.create(category_id: category.id, difficulty: '600', content: 'What are the values of a, b, c and d?
                                                                                  a, (b, *c), d = 1, [2, 3, 4], 5')
question5 = Question.create(category_id: category.id, difficulty: '800', content: 'Variables that start with a capital letter are what kind of variables in Ruby?')
question6 = Question.create(category_id: category.id, difficulty: '1000', content: 'What does the following code print?
                                                                                    class IceCream
                                                                                      @temp = "cold"
                                                                                    end
                                                                                    print IceCream.instance_variables')

question8 = Question.create(category_id: category2.id, difficulty: '200', content: 'What does the following code print?
                                                                                    puts "unicorn".reverse()')
question9 = Question.create(category_id: category2.id, difficulty: '400', content: 'arr = ["onyx", "wu tang", "biggie", "tupac"]
                                                                                    Get the "biggie" string from arr.')
question10 = Question.create(category_id: category2.id, difficulty: '600', content: 'colors = ["red", "violet", "blue"]')
question11 = Question.create(category_id: category2.id, difficulty: '800', content: 'days = ["mon", "tues", "wed", "thur", "fri"]
                                                                                    Create an array of the elements with indexes 0 and 2. The return value should be ["mon", "wed"].')
question12 = Question.create(category_id: category2.id, difficulty: '1000', content: 'What  does the following print
                                                                                    enum = ("begin"..."finish").to_enum
                                                                                    print enum.next
                                                                                    print enum.next
                                                                                    print enum.next')

question14 = Question.create(category_id: category3.id, difficulty: '200', content: 'what is 5+2?')
question15 = Question.create(category_id: category3.id, difficulty: '400', content: 'what is 5+1?')
question16 = Question.create(category_id: category3.id, difficulty: '600', content: 'what is 5+3?')
question17 = Question.create(category_id: category3.id, difficulty: '800', content: 'what is 5+4?')
question18 = Question.create(category_id: category3.id, difficulty: '1000', content: 'what is 5+6?')

question20 = Question.create(category_id: category4.id, difficulty: '200', content: 'what is 5+2?')
question21 = Question.create(category_id: category4.id, difficulty: '400', content: 'what is 5+1?')
question22 = Question.create(category_id: category4.id, difficulty: '600', content: 'Question 17: What does the following print? print 10.step(100, 20).to_a')
question23 = Question.create(category_id: category4.id, difficulty: '800', content: 'what is 5+4?')
question24 = Question.create(category_id: category4.id, difficulty: '1000', content: 'what is 5+6?')


question26 = Question.create(category_id: category5.id, difficulty: '200', content: 'what is 5+2?')
question27 = Question.create(category_id: category5.id, difficulty: '400', content: 'what is 5+1?')
question28 = Question.create(category_id: category5.id, difficulty: '600', content: 'what is 5+3?')
question29 = Question.create(category_id: category5.id, difficulty: '800', content: 'what is 5+4?')
question30 = Question.create(category_id: category5.id, difficulty: '1000', content: 'what is 5+6?')

user = User.create(first_name: 'flat', last_name: 'iron', hometown: 'philly', password_digest: 'flatiron', tagline: 'working')

player = Player.create(board_id: board, user_id: user.id, points: 100)

option1 = Option.create(question_id: question.id, correct: false, content: 6)
option2 = Option.create(question_id: question.id, correct: true, content: 8)
option3 = Option.create(question_id: question.id, correct: false, content: 12)
option4 = Option.create(question_id: question.id, correct: false, content: "error")
