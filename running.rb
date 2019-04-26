require_relative "./database"

# puts Database::Database

def quiz_run(user1)
    user1.question1_env_cap
    user1.question1_aut_hum
    user1.question1_aut_cap
    user1.question1_env_hum

    user1.question2_env1
    user1.question2_cap1
    user1.question2_hum1
    user1.question2_aut1
    user1.question2_env2
    user1.question2_cap2
    user1.question2_hum2
    user1.question2_aut2

    user1.question3_env1
    user1.question3_cap1
    user1.question3_hum1
    user1.question3_aut1
    user1.question3_env2
    user1.question3_cap2
    user1.question3_hum2
    user1.question3_aut2
    user1.question4_env
    user1.question4_cap
    user1.question4_hum
    user1.question4_aut
end

def print_percent_val_top(user1)
    puts user1.percent_dif_lib_values
    puts user1.percent_dif_lab_values
    puts user1.percent_dif_gre_values
    puts user1.percent_dif_lib_topics
    puts user1.percent_dif_lab_topics
    puts user1.percent_dif_gre_topics
end
    

def main_menu()
    puts "
    This is the MAIN MENU.

    To choose an option, enter it's corresponding number

    1 - Run Quiz
    2 - View users answers
    3 - Quit Game"
    input = gets().strip.to_i
    if(input == 1)
        quiz_menu
    elsif(input ==2)
        print "Your are first gamer"
    elsif(input ==3)
        puts "Thanks for coming"
        exit!
    end
end
    
def quiz_menu
    puts "
    ____________________________________________________________________________________________________________________________
    Welcome to the Political Profiler, a quiz that tailors its questions to YOUR answers in order to be as accurate as possible.


    In this quiz, you will be asked how much you agree with a political statement by entering and integer between 1 and 5.

    1: Strongly Disagree
    2: Disagree
    3: Neutral
    4: Agree
    5: Strongly Agree
    
    You will be asked 24 questions for accuracy. Please answer honestly.

    Type your name and press ENTER to continue."
    name = gets().strip
    user1 = Database::Database.new(name)
    return name
end

user1 = Database::Database.new("")

# user1 = Database.new(main_menu)
puts user1.user_name

user1.main_menu()
quiz_run(user1)
puts user1.compare

#Database::Database.self.get_instances
