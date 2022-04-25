class Question
    attr_accessor :prompt, :user_answer

    def initialize(prompt, user_answer)
        @prompt = prompt
        @user_answer = user_answer
    end 
end 

    q1 = "Question 1: Red traffic light indicates…?\n (A) Stop the vehicle \n(B) Slow down \n(C) Vehicle can proceed with caution"
    q2 = "The following sign represents…? \n(A) Road to the right in front \n(B) Compulsory turn right \n(C) Turn to Right prohibited"
    q3 = "How can you distinguish a transport vehicle?\n (A) By looking at the tyre size (B) By looking at the number plate of the vehicle \n (C) By looking at the number plate of the vehicle"
    q4 = "While you are driving on gradient roads, you should..?\n (A) Give precedence to the vehicles coming down the hill \n (B) Give precedence to the vehicle going up the hill \n(C) Give precedence to the vehicles carrying heavy load "
    q5 = "You are allowed to park? \n (A) On a footpath \n(B) At top of a hill \n(C) Neither of these two alternatives"
    q6 = "The hand brake is to be used? \n (A) To reduce the speed \n (B) To apply sudden brake \n(C) To park a vehicle"
    q7 = "The sign represents..? \n (A) Students prohibited \n (B) Pedestrians permitted  \n (C) Pedestrians prohibited."
    questions = [
    Question.new(q1, "a"), 
    Question.new(q2, "c"), 
    Question.new(q3, "d"),
    Question.new(q4, "e"),
    Question.new(q5, "a"),
    Question.new(q6, "c"),
    Question.new(q7, "a")
]

def ask_question(questions)
    user_answer = ""
    score = 0
    for question in questions
        puts question.prompt
        user_answer = gets.chomp()
        if user_answer == question.user_answer
            score += 1
        end
    end
    puts ("Thank you! Your result is " + score.to_s + " under " + questions.length().to_s)
end

ask_question(questions)