
class Database
    attr_accessor(:enviromentalist, :capitalist, :humanitarian, :authoratarian, :abortion, :asylum, :death_penalty, :director_quotas, :drug_testing, :euthanasia, :monarchy, :nuclear_energy, :parental_leave, :same_sex_marriage, :ssc, :vaccines)
    @@instantces = 0
    def self.get_instances
        @@instantces = 0 
    end
    # values for attributes and stored party values are centred around 9 and 3. 9 because the maximum value obtained either way wont go below 0 then which later complicates the percentage comparisons
    def initialize(user_name)
        @user_name = user_name
        @enviromentalist = 9
        @capitalist = 9
        @humanitarian = 9
        @authoritarian = 9
        @abortion = 3
        @asylum = 3 
        @death_penalty = 3
        @director_quotas = 3
        @drug_testing = 3
        @euthanasia = 3
        @grapes = 3
        @monarchy = 3
        @nuclear_energy = 3
        @parental_leave = 3
        @same_sex_marriage = 3
        @ssc = 3
        @vaccines = 3
        @@instantces += 1
        @party = [
    liberal = {
        enviromentalist: -4 + 9,
        capitalist: 4 + 9,
        humanitarian: 0 + 9,
        authoritarian: 0 + 9, 
        abortion: 1 + 3,
        asylum: -2 + 3,
        death_penalty: -1 + 3,
        director_quotas: -2 + 3,
        drug_testing: 2 + 3,
        euthanasia: 2 + 3,
        monarchy: -2 + 3,
        nuclear_energy: 2 + 3,
        parental_leave: 2 + 3,
        same_sex_marriage: 2 + 3,
        ssc: -2 + 3,
        vaccines: 2 + 3
    },
    labor = {
        enviromentalist: 2 + 9,
        capitalist: 0 + 9,
        humanitarian: 2 + 9,
        authoritarian: -4 + 9,
        abortion: 2 + 3,
        asylum: 1 + 3,
        death_penalty: -1 + 3,
        director_quotas: 2 + 3,
        drug_testing: 2 + 3,
        euthanasia: 2 + 3,
        monarchy: 2 + 3,
        nuclear_energy: -2 + 3,
        parental_leave: -2 + 3,
        same_sex_marriage: 2 + 3,
        ssc: 2 + 3,
        vaccines: 2 + 3
    },
    greens = {
        enviromentalist: -4 + 9,
        capitalist: 4 + 9,
        humanitarian: 4 + 9,
        authoritarian: -4 + 9,
        abortion: 2 + 3,
        asylum: 2 + 3,
        death_penalty: -2 + 3,
        director_quotas: 2 + 3,
        drug_testing: 2 + 3,
        euthanasia: 2 + 3,
        monarchy: 2 + 3,
        nuclear_energy: -2 + 3,
        parental_leave: 2 + 3,
        same_sex_marriage: 1 + 3,
        ssc: 2 + 3,
        vaccines: 2 + 3
    }]
    end
    
    def user_print
        return "Enviromentalist: #{@enviromentalist} 
        Capitalist: #{@capitalist}
        Humanitarian: #{@humanitarian}
        Authoritarian: #{@authoritarian}
        Abortion: #{@abortion}
        Asylum: #{@asylum}
        Death Penalty: #{@death_penalty}
        Director Quota: #{@director_quotas}
        Drug Testing: #{@drug_testing}
        Euthanasia: #{@euthanasia}
        Monarchy: #{@monarchy}
        Nuclear Energy: #{@nuclear_energy}
        Parental Leave: #{@parental_leave}
        Same Sex Marriage: #{@same_sex_marriage}
        Safe Schools Coalition: #{@ssc}
        Vaccinations: #{@vaccines}"
    end
    def compare_print_lib
        return "Enviromentalist: #{percent_dif_lib_env} 
        Capitalist: #{percent_dif_lib_cap}
        Humanitarian: #{percent_dif_lib_hum}
        Authoritariam: #{percent_dif_lib_aut}
        Abortion: #{percent_dif_lib_abortion}
        Asylum: #{percent_dif_lib_asylum}
        Death Penalty: #{percent_dif_lib_death_penalty}
        Director Quota: #{percent_dif_lib_director_quotas}
        Drug Testing: #{percent_dif_lib_drug_testing}
        Euthanasia: #{percent_dif_lib_euthanasia}
        Monarchy: #{percent_dif_lib_monarchy}
        Nuclear Energy: #{percent_dif_lib_nuclear_energy}
        Parental Leave: #{percent_dif_lib_parental_leave}
        Same Sex Marriage: #{percent_dif_lib_same_sex_marriage}
        Safe Schools Coalition: #{percent_dif_lib_ssc}
        Vaccinations: #{percent_dif_lib_vaccines}"
    end
    def compare_print_lab
        return "Enviromentalist: #{percent_dif_lab_env} 
        Capitalist: #{percent_dif_lab_cap}
        Humanitarian: #{percent_dif_lab_hum}
        Authoritariam: #{percent_dif_lab_aut}
        Abortion: #{percent_dif_lab_abortion}
        Asylum: #{percent_dif_lab_asylum}
        Death Penalty: #{percent_dif_lab_death_penalty}
        Director Quota: #{percent_dif_lab_director_quotas}
        Drug Testing: #{percent_dif_lab_drug_testing}
        Euthanasia: #{percent_dif_lab_euthanasia}
        Monarchy: #{percent_dif_lab_monarchy}
        Nuclear Energy: #{percent_dif_lab_nuclear_energy}
        Parental Leave: #{percent_dif_lab_parental_leave}
        Same Sex Marriage: #{percent_dif_lab_same_sex_marriage}
        Safe Schools Coalition: #{percent_dif_lab_ssc}
        Vaccinations: #{percent_dif_lab_vaccines}"
    end
    def compare_print_gre
        return "Enviromentalist: #{percent_dif_gre_env} 
        Capitalist: #{percent_dif_gre_cap}
        Humanitarian: #{percent_dif_gre_hum}
        Authoritariam: #{percent_dif_gre_aut}
        Abortion: #{percent_dif_gre_abortion}
        Asylum: #{percent_dif_gre_asylum}
        Death Penalty: #{percent_dif_gre_death_penalty}
        Director Quota: #{percent_dif_gre_director_quotas}
        Drug Testing: #{percent_dif_gre_drug_testing}
        Euthanasia: #{percent_dif_gre_euthanasia}
        Monarchy: #{percent_dif_gre_monarchy}
        Nuclear Energy: #{percent_dif_gre_nuclear_energy}
        Parental Leave: #{percent_dif_gre_parental_leave}
        Same Sex Marriage: #{percent_dif_gre_same_sex_marriage}
        Safe Schools Coalition: #{percent_dif_gre_ssc}
        Vaccinations: #{percent_dif_gre_vaccines}"
    end

    
# the main menu and quiz menu are key methods that run the app
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
        elsif(input != 1 && input!=2 && input!=3)
            puts "Please enter a valid input"
        end
    end
        
    def quiz_menu
        puts "
        ____________________________________________________________________________________________________________________________
        Welcome to the Political Profiler, a quiz that compares YOUR answers to the three major political parties!


        In this quiz, you will be asked how much you agree with a political statement by entering and integer between 1 and 5.

        1: Strongly Disagree
        2: Disagree
        3: Neutral
        4: Agree
        5: Strongly Agree
        
        You will be asked 24 questions for accuracy. Please answer honestly.

        Type your name and press ENTER to continue."
        name = gets().strip
        user1 = Database.new(name)
    end
# this checks that in each question only an integer is an available option to enter
    def input_check_int
        input = gets().strip.to_i
        flag = true
        while flag
            if (input.is_a? Integer and input.between?(1,5))
                flag = false
            else
                puts "Invalid input"
                input = gets().strip.to_i
            end
        end
        return input
    end
    
    
    # the first 12 questions methods alter the scores of the 'values' type of attributes
    def question1_env_cap 
        puts "
        1. The free market is more important than sustaining the environment
        "
        input = input_check_int
        input_cap = (input - 3)
        input_env = (-input_cap)
        @capitalist += input_cap * 2
        @enviromentalist += input_env * 2
    end
    def question1_aut_hum
        puts "
        2. Punishing the unlawful is more important than supporting the citizens
        "
        input = input_check_int
        input_aut = input - 3
        input_hum = -input_aut
        @authoritarian += input_aut * 2
        @humanitarian += input_hum * 2
    end
    def question1_aut_cap
        puts "
        3. Leniance on criminals is a valid sacrifice for the growth of the economy
        "
        input = input_check_int
        input_aut = input - 3 
        input_cap = -input_aut
        @authoritarian+= input_aut * 2
        @capitalist += input_cap * 2
    end
    def question1_env_hum
        puts "
        4. Neglecting the environmental impact of programs is justified if it improves the lives of the people
        "
        input = input_check_int
        input_hum = input - 3
        input_env = -input_hum
        @humanitarian +=input_hum * 2
        @enviromentalist += input_env * 2
    end
    


    def question2_env1
        puts "
        5. The goverment should allow sale of agriland to foreign buyers at the expense of the enviroment.
        "
        input = input_check_int
        input_env = -(input - 3)
    end
    def question2_cap1
        puts "
        6. Sunday pay should stay at double wages.
        "
        input = input_check_int
        input_cap = -(input - 3)
    end
    def question2_hum1
        puts "
        7. The government should increase foreign aid
        "
        input = input_check_int
        input_hum = input - 3
    end
    def question2_aut1
        puts "
        8. Citizens should lose their citizenship if they join a terrorist group
        "
        input = input_check_int
        input_aut = input - 3
    end
    def question2_env2
        puts "
        9. Disposible, non-biodegradable products should be banned.
        "
        input = input_check_int
        input_env = input - 3
    end
    def question2_cap2
        puts "
        10. Tax rates for all buisnesses should be lowered.
        "
        input = input_check_int
        input_cap = input - 3
    end
    def question2_hum2
        puts "
        11. There should be less restrictions on welfare benifits.
        "
        input = input_check_int
        input_hum = input - 3
    end
    def question2_aut2
        puts "
        12. The government should regulate social media.
        "
        input = input_check_int
        input_aut = input - 3
    end

# the remaining question methods only alter the attribute specific to that question

    def question3_env1
        puts "
        13. Abortion should be legal
        "
        input = input_check_int
        input_abo = input - 3
        @abortion += input_abo
    end    
     
    def question3_cap1
        puts "
        14. Parental leave payments should be based on the parents wage
        "
        input = input_check_int
        input_par = input - 3 
        @parental_leave += input_par
    end  
    def question3_hum1
        puts "
        15. Same sex marriage should be legal
        "
        input = input_check_int
        input_marriage = input - 3
        @same_sex_marriage += input_marriage
    end
    def question3_aut1
        puts "
        16. The death penalty should be legal
        "
        input = input_check_int
        input_death = input - 3
        @death_penalty += input_death
    end   
    def question3_env2
        puts "
        17. Government should require children to be vaccinated for preventable diseases
        "
        input = input_check_int
        input_vac = input - 3 
        @vaccines += input_vac
    end    
    def question3_cap2
        puts "
        18. The government should fund the Safe Schools Coalition
        "
        input = input_check_int
        input_ssc = input - 3
        @ssc += input_ssc
    end    
        
    def question3_hum2
        puts "
        19. Euthanasia should be legal
        "
        input = input_check_int
        input_euth = input - 3
        @euthanasia += input_euth
    end    
     
    def question3_aut2
        puts "
        20. Drug testing should be legal at festivals
        "
        input = input_check_int
        input_drugs = input - 3
        @drug_testing +=input_drugs
    end



    def question4_env
        puts "
        21. Nuclear energy should be further implemented in Australia
        "
        input = input_check_int
        input_nuclear = input - 3
        @nuclear_energy += input_nuclear
    end    
    def question4_cap
        puts "
        22. Businesses should be required to have women on board of directors
        "
        input = input_check_int
        input_quota = input - 3
        @director_quotas += input_quota
    end    
    def question4_hum
        puts "
        23. Australia should accept immigrants from asylum seeking boats
        "
        input = input_check_int
        input_asylum = input - 3 
        @asylum += input_asylum
    end    
    def question4_aut
        puts "
        24. Australia should end the monarchy and become a republic 
        "
        input = input_check_int
        input_monarchy = input -3 
        @monarchy += input_monarchy
    end


# these methods measure the percentage similarity of the users response in each of the 4 value attributes across the three parties
    def percent_dif_lib_env
        if @party[0][:enviromentalist] >= @enviromentalist
            output = @enviromentalist / @party[0][:enviromentalist]
        elsif @party[0][:enviromentalist] < @enviromentalist
            dif_user = @enviromentalist - 9.0
            dif_party = @party[0][:enviromentalist] - 9.0
            party = 9.0 - dif_party
            user = 9.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lib_cap
        if @party[0][:capitalist] >= @capitalist
            output = @capitalist / @party[0][:capitalist]
        elsif @party[0][:capitalist] < @capitalist
            dif_user = @capitalist - 9.0
            dif_party = @party[0][:capitalist] - 9.0
            party = 9.0 - dif_party
            user = 9.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lib_hum
        if @party[0][:humanitarian] >= @humanitarian
            output = @humanitarian / @party[0][:humanitarian]
        elsif @party[0][:humanitarian] < @humanitarian
            dif_user = @humanitarian - 9.0
            dif_party = @party[0][:humanitarian] - 9.0
            party = 9.0 - dif_party
            user = 9.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lib_aut
        if @party[0][:authoritarian] >= @authoritarian
            output = @authoritarian / @party[0][:authoritarian]
        elsif @party[0][:authoritarian] < @authoritarian
            dif_user = @authoritarian - 9.0
            dif_party = @party[0][:authoritarian] - 9.0
            party = 9.0 - dif_party
            user = 9.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lab_env
        if @party[1][:enviromentalist] >= @enviromentalist
            output = @enviromentalist / @party[1][:enviromentalist]
        elsif @party[1][:enviromentalist] < @enviromentalist
            dif_user = @enviromentalist - 9.0
            dif_party = @party[1][:enviromentalist] - 9.0
            party = 9.0 - dif_party
            user = 9.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lab_cap
        if @party[1][:capitalist] >= @capitalist
            output = @capitalist / @party[1][:capitalist]
        elsif @party[1][:capitalist] < @capitalist
            dif_user = @capitalist - 9.0
            dif_party = @party[1][:capitalist] - 9.0
            party = 9.0 - dif_party
            user = 9.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lab_hum
        if @party[1][:humanitarian] >= @humanitarian
            output = @humanitarian / @party[1][:humanitarian]
        elsif @party[1][:humanitarian] < @humanitarian
            dif_user = @humanitarian - 9.0
            dif_party = @party[1][:humanitarian] - 9.0
            party = 9.0 - dif_party
            user = 9.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lab_aut
        if @party[1][:authoritarian] >= @authoritarian
            output = @authoritarian / @party[1][:authoritarian]
        elsif @party[1][:authoritarian] < @authoritarian
            dif_user = @authoritarian - 9.0
            dif_party = @party[1][:authoritarian] - 9.0
            party = 9.0 - dif_party
            user = 9.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_gre_env
        if @party[2][:enviromentalist] >= @enviromentalist
            output = @enviromentalist / @party[2][:enviromentalist]
        elsif @party[2][:enviromentalist] < @enviromentalist
            dif_user = @enviromentalist - 9.0
            dif_party = @party[2][:enviromentalist] - 9.0
            party = 9.0 - dif_party
            user = 9.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_gre_cap
        if @party[2][:capitalist] >= @capitalist
            output = @capitalist / @party[2][:capitalist]
        elsif @party[2][:capitalist] < @capitalist
            dif_user = @capitalist - 9.0
            dif_party = @party[0][:capitalist] - 9.0
            party = 9.0 - dif_party
            user = 9.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_gre_hum
        if @party[2][:humanitarian] >= @humanitarian
            output = @humanitarian / @party[2][:humanitarian]
        elsif @party[2][:humanitarian] < @humanitarian
            dif_user = @humanitarian - 9.0
            dif_party = @party[2][:humanitarian] - 9.0
            party = 9.0 - dif_party
            user = 9.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_gre_aut
        if @party[2][:authoritarian] >= @authoritarian
            output = @authoritarian / @party[2][:authoritarian]
        elsif @party[2][:authoritarian] < @authoritarian
            dif_user = @authoritarian - 9.0
            dif_party = @party[0][:authoritarian] - 9.0
            party = 9.0 - dif_party
            user = 9.0 - dif_user
            output = user / party
        end
        return output
    end
    
    
    # these methods measure the percentage similarity of users responses in each of the 12 topic based questions across the parties
    def percent_dif_lib_abortion
        if @party[0][:abortion] >= @abortion
            output = abortion / @party[0][:abortion]
        elsif @party[0][:abortion] < @abortion
            dif_user = @abortion - 3.0
            dif_party = @party[0][:abortion] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lib_asylum
        if @party[0][:asylum] >= @asylum
            output = asylum / @party[0][:asylum]
        elsif @party[0][:asylum] < @asylum
            dif_user = @asylum - 3.0
            dif_party = @party[0][:asylum] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lib_death_penalty
        if @party[0][:death_penalty] >= @death_penalty
            output = death_penalty / @party[0][:death_penalty]
        elsif @party[0][:death_penalty] < @death_penalty
            dif_user = @death_penalty - 3.0
            dif_party = @party[0][:death_penalty] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lib_director_quotas
        if @party[0][:director_quotas] >= @director_quotas
            output = director_quotas / @party[0][:director_quotas]
        elsif @party[0][:director_quotas] < @director_quotas
            dif_user = @director_quotas - 3.0
            dif_party = @party[0][:director_quotas] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lib_drug_testing
        if @party[0][:drug_testing] >= @drug_testing
            output = drug_testing / @party[0][:drug_testing]
        elsif @party[0][:drug_testing] < @drug_testing
            dif_user = @drug_testing - 3.0
            dif_party = @party[0][:drug_testing] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lib_euthanasia
        if @party[0][:euthanasia] >= @euthanasia
            output = euthanasia / @party[0][:euthanasia]
        elsif @party[0][:euthanasia] < @euthanasia
            dif_user = @euthanasia - 3.0
            dif_party = @party[0][:euthanasia] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lib_grapes
        if @party[0][:grapes] >= @grapes
            output = grapes / @party[0][:grapes]
        elsif @party[0][:grapes] < @grapes
            dif_user = @grapes - 3.0
            dif_party = @party[0][:grapes] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lib_monarchy
        if @party[0][:monarchy] >= @monarchy
            output = monarchy / @party[0][:monarchy]
        elsif @party[0][:monarchy] < @monarchy
            dif_user = @monarchy - 3.0
            dif_party = @party[0][:monarchy] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lib_nuclear_energy
        if @party[0][:nuclear_energy] >= @nuclear_energy
            output = nuclear_energy / @party[0][:nuclear_energy]
        elsif @party[0][:nuclear_energy] < @nuclear_energy
            dif_user = @nuclear_energy - 3.0
            dif_party = @party[0][:nuclear_energy] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lib_parental_leave
        if @party[0][:parental_leave] >= @parental_leave
            output = parental_leave / @party[0][:parental_leave]
        elsif @party[0][:parental_leave] < @parental_leave
            dif_user = @parental_leave - 3.0
            dif_party = @party[0][:parental_leave] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lib_same_sex_marriage
        if @party[0][:same_sex_marriage] >= @same_sex_marriage
            output = same_sex_marriage / @party[0][:same_sex_marriage]
        elsif @party[0][:same_sex_marriage] < @same_sex_marriage
            dif_user = @same_sex_marriage - 3.0
            dif_party = @party[0][:same_sex_marriage] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lib_ssc
        if @party[0][:ssc] >= @ssc
            output = ssc / @party[0][:ssc]
        elsif @party[0][:ssc] < @ssc
            dif_user = @ssc - 3.0
            dif_party = @party[0][:ssc] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lib_vaccines
        if @party[0][:vaccines] >= @vaccines
            output = vaccines / @party[0][:vaccines]
        elsif @party[0][:vaccines] < @vaccines
            dif_user = @vaccines - 3.0
            dif_party = @party[0][:vaccines] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lab_abortion
        if @party[1][:abortion] >= @abortion
            output = abortion / @party[1][:abortion]
        elsif @party[1][:abortion] < @abortion
            dif_user = @abortion - 3.0
            dif_party = @party[1][:abortion] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lab_asylum
        if @party[1][:asylum] >= @asylum
            output = asylum / @party[1][:asylum]
        elsif @party[1][:asylum] < @asylum
            dif_user = @asylum - 3.0
            dif_party = @party[1][:asylum] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lab_death_penalty
        if @party[1][:death_penalty] >= @death_penalty
            output = death_penalty / @party[1][:death_penalty]
        elsif @party[1][:death_penalty] < @death_penalty
            dif_user = @death_penalty - 3.0
            dif_party = @party[1][:death_penalty] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lab_director_quotas
        if @party[1][:director_quotas] >= @director_quotas
            output = director_quotas / @party[1][:director_quotas]
        elsif @party[1][:director_quotas] < @director_quotas
            dif_user = @director_quotas - 3.0
            dif_party = @party[1][:director_quotas] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lab_drug_testing
        if @party[1][:drug_testing] >= @drug_testing
            output = drug_testing / @party[1][:drug_testing]
        elsif @party[1][:drug_testing] < @drug_testing
            dif_user = @drug_testing - 3.0
            dif_party = @party[1][:drug_testing] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lab_euthanasia
        if @party[1][:euthanasia] >= @euthanasia
            output = euthanasia / @party[1][:euthanasia]
        elsif @party[1][:euthanasia] < @euthanasia
            dif_user = @euthanasia - 3.0
            dif_party = @party[1][:euthanasia] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lab_grapes
        if @party[1][:grapes] >= @grapes
            output = grapes / @party[1][:grapes]
        elsif @party[1][:grapes] < @grapes
            dif_user = @grapes - 3.0
            dif_party = @party[1][:grapes] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lab_monarchy
        if @party[1][:monarchy] >= @monarchy
            output = monarchy / @party[1][:monarchy]
        elsif @party[1][:monarchy] < @monarchy
            dif_user = @monarchy - 3.0
            dif_party = @party[1][:monarchy] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lab_nuclear_energy
        if @party[1][:nuclear_energy] >= @nuclear_energy
            output = nuclear_energy / @party[1][:nuclear_energy]
        elsif @party[1][:nuclear_energy] < @nuclear_energy
            dif_user = @nuclear_energy - 3.0
            dif_party = @party[1][:nuclear_energy] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lab_parental_leave
        if @party[1][:parental_leave] >= @parental_leave
            output = parental_leave / @party[1][:parental_leave]
        elsif @party[1][:parental_leave] < @parental_leave
            dif_user = @parental_leave - 3.0
            dif_party = @party[1][:parental_leave] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lab_same_sex_marriage
        if @party[1][:same_sex_marriage] >= @same_sex_marriage
            output = same_sex_marriage / @party[1][:same_sex_marriage]
        elsif @party[1][:same_sex_marriage] < @same_sex_marriage
            dif_user = @same_sex_marriage - 3.0
            dif_party = @party[1][:same_sex_marriage] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lab_ssc
        if @party[1][:ssc] >= @ssc
            output = ssc / @party[1][:ssc]
        elsif @party[1][:ssc] < @ssc
            dif_user = @ssc - 3.0
            dif_party = @party[1][:ssc] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_lab_vaccines
        if @party[1][:vaccines] >= @vaccines
            output = vaccines / @party[1][:vaccines]
        elsif @party[1][:vaccines] < @vaccines
            dif_user = @vaccines - 3.0
            dif_party = @party[1][:vaccines] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_gre_abortion
        if @party[2][:abortion] >= @abortion
            output = abortion / @party[2][:abortion]
        elsif @party[2][:abortion] < @abortion
            dif_user = @abortion - 3.0
            dif_party = @party[2][:abortion] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_gre_asylum
        if @party[2][:asylum] >= @asylum
            output = asylum / @party[2][:asylum]
        elsif @party[2][:asylum] < @asylum
            dif_user = @asylum - 3.0
            dif_party = @party[2][:asylum] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_gre_death_penalty
        if @party[2][:death_penalty] >= @death_penalty
            output = death_penalty / @party[2][:death_penalty]
        elsif @party[2][:death_penalty] < @death_penalty
            dif_user = @death_penalty - 3.0
            dif_party = @party[2][:death_penalty] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_gre_director_quotas
        if @party[2][:director_quotas] >= @director_quotas
            output = director_quotas / @party[2][:director_quotas]
        elsif @party[2][:director_quotas] < @director_quotas
            dif_user = @director_quotas - 3.0
            dif_party = @party[2][:director_quotas] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_gre_drug_testing
        if @party[2][:drug_testing] >= @drug_testing
            output = drug_testing / @party[2][:drug_testing]
        elsif @party[2][:drug_testing] < @drug_testing
            dif_user = @drug_testing - 3.0
            dif_party = @party[2][:drug_testing] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_gre_euthanasia
        if @party[2][:euthanasia] >= @euthanasia
            output = euthanasia / @party[2][:euthanasia]
        elsif @party[2][:euthanasia] < @euthanasia
            dif_user = @euthanasia - 3.0
            dif_party = @party[2][:euthanasia] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_gre_grapes
        if @party[2][:grapes] >= @grapes
            output = grapes / @party[2][:grapes]
        elsif @party[2][:grapes] < @grapes
            dif_user = @grapes - 3.0
            dif_party = @party[2][:grapes] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_gre_monarchy
        if @party[2][:monarchy] >= @monarchy
            output = monarchy / @party[2][:monarchy]
        elsif @party[2][:monarchy] < @monarchy
            dif_user = @monarchy - 3.0
            dif_party = @party[2][:monarchy] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_gre_nuclear_energy
        if @party[2][:nuclear_energy] >= @nuclear_energy
            output = nuclear_energy / @party[2][:nuclear_energy]
        elsif @party[2][:nuclear_energy] < @nuclear_energy
            dif_user = @nuclear_energy - 3.0
            dif_party = @party[2][:nuclear_energy] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_gre_parental_leave
        if @party[2][:parental_leave] >= @parental_leave
            output = parental_leave / @party[2][:parental_leave]
        elsif @party[2][:parental_leave] < @parental_leave
            dif_user = @parental_leave - 3.0
            dif_party = @party[2][:parental_leave] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_gre_same_sex_marriage
        if @party[2][:same_sex_marriage] >= @same_sex_marriage
            output = same_sex_marriage / @party[2][:same_sex_marriage]
        elsif @party[2][:same_sex_marriage] < @same_sex_marriage
            dif_user = @same_sex_marriage - 3.0
            dif_party = @party[2][:same_sex_marriage] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_gre_ssc
        if @party[2][:ssc] >= @ssc
            output = ssc / @party[2][:ssc]
        elsif @party[2][:ssc] < @ssc
            dif_user = @ssc - 3.0
            dif_party = @party[2][:ssc] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end
    def percent_dif_gre_vaccines
        if @party[2][:vaccines] >= @vaccines
            output = vaccines / @party[2][:vaccines]
        elsif @party[2][:vaccines] < @vaccines
            dif_user = @vaccines - 3.0
            dif_party = @party[2][:vaccines] - 3.0
            party = 3.0 - dif_party
            user = 3.0 - dif_user
            output = user / party
        end
        return output
    end


# these methods measure percent similarity for the overall scores, the values and the topics. 
    def percent_dif_lib_values
        result =  (( percent_dif_lib_env + percent_dif_lib_cap + percent_dif_lib_hum + percent_dif_lib_aut ) / 4.0000)
        return result
    end
    def percent_dif_lab_values
        result = ( (percent_dif_lab_env + percent_dif_lab_cap + percent_dif_lab_hum + percent_dif_lab_aut ) / 4.0)
        return result 
    end
    def percent_dif_gre_values
        result = ( (percent_dif_gre_env + percent_dif_gre_cap + percent_dif_gre_hum + percent_dif_gre_aut ) / 4.0)
        return result
    end
    def percent_dif_lib_topics
        result = (( percent_dif_lib_abortion + percent_dif_lib_asylum + percent_dif_lib_death_penalty + percent_dif_lib_director_quotas + percent_dif_lib_drug_testing + percent_dif_lib_euthanasia + percent_dif_lib_monarchy + percent_dif_lib_nuclear_energy + percent_dif_lib_parental_leave + percent_dif_lib_same_sex_marriage + percent_dif_lib_ssc + percent_dif_lib_vaccines ) / 12.0)
        return result
    end
    def percent_dif_lab_topics
        result =  (( percent_dif_lab_abortion + percent_dif_lab_asylum + percent_dif_lab_death_penalty + percent_dif_lab_director_quotas + percent_dif_lab_drug_testing + percent_dif_lab_euthanasia + percent_dif_lab_monarchy + percent_dif_lab_nuclear_energy + percent_dif_lab_parental_leave + percent_dif_lab_same_sex_marriage + percent_dif_lab_ssc + percent_dif_lab_vaccines ) / 12.0)
        return result
    end
    def percent_dif_gre_topics
        result =  ( (percent_dif_gre_abortion + percent_dif_gre_asylum + percent_dif_gre_death_penalty + percent_dif_gre_director_quotas + percent_dif_gre_drug_testing + percent_dif_gre_euthanasia + percent_dif_gre_monarchy + percent_dif_gre_nuclear_energy + percent_dif_gre_parental_leave + percent_dif_gre_same_sex_marriage + percent_dif_gre_ssc + percent_dif_gre_vaccines ) / 12.0)
        return result
    end
    def percent_dif_lib
        (( percent_dif_lib_values + percent_dif_lib_topics ) / 2)*100
    end
    def percent_dif_lab
        (( percent_dif_lab_values + percent_dif_lab_topics ) / 2)*100
    end
    def percent_dif_gre
        (( percent_dif_gre_values + percent_dif_gre_topics ) / 2)*100
    end

    def compare_overall()
        compare = {}
        compare.merge!(LIBERAL: "Your responses are #{percent_dif_lib.round(2)}% similar to liberal party")
        compare.merge!(LABOR: "Your responses are #{percent_dif_lab.round(2)}% similar to labor party")
        compare.merge!(GREENS: "Your responses are #{percent_dif_gre.round(2)}% similar to greens party")
        compare = compare.sort_by {|k,v| v}.reverse
    end


    # this method allows people to have the option of viewing the various stats
    def see_stats
        input = true
            until(input == 3)
                puts "
                Would you like to see more detailed similarities?
                
            1. Yes, I would like my values results!

            2. Yes, I would like my topics results!
            
            3. No I would like to exit
            "
            input = gets.strip.to_i
                if(input == 1)
                    compare_v = {}
                    compare_v.merge!(LIBERAL: "Your responses are #{(percent_dif_lib_values*100).round(2)}% similar to liberal values")
                    compare_v.merge!(LABOR: "Your responses are #{(percent_dif_lab_values*100).round(2)}% similar to labor values")
                    compare_v.merge!(GREENS: "Your responses are #{(percent_dif_gre_values*100).round(2)}% similar to greens values")
                    output = compare_v.sort_by {|k,v| v}.reverse
                    puts output
                
                elsif (input == 2)
                    compare_t = {}
                    compare_t.merge!(LIBERAL: "Your topic responses are #{(percent_dif_lib_topics*100).round(2)}% similar to liberal")
                    compare_t.merge!(LABOR: "Your topic responses are #{(percent_dif_lab_topics*100).round(2)}% similar to labor")
                    compare_t.merge!(GREENS: "Your topic responses are #{(percent_dif_gre_topics*100).round(2)}% similar to greens")
                    output = compare_t.sort_by {|k,v| v}.reverse
                    puts output
                elsif (input == 3)
                    output = "Thanks For Taking Part"
                    puts output
                    exit!
                elsif(input !=1 && input!=2 && input!=3)
                    puts "Sorry please enter a valid option"
                end
            end    
    end
end
#  this method gives the order of which the question methods are called
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

def print_stuff(user1)
    puts user1.percent_dif_lib_values
    puts user1.percent_dif_lab_values
    puts user1.percent_dif_gre_values
    puts user1.percent_dif_lib_topics
    puts user1.percent_dif_lab_topics
    puts user1.percent_dif_gre_topics
end
    


user1 = Database.new("")


# this is the intended running sequence of the program
user1.main_menu()
quiz_run(user1)
puts user1.compare_overall
puts user1.see_stats

