module Questions

# phase 1 questions
def question1_1 
    puts "The free market is more important than sustaining the environment"
    input = gets().strip.to_i
    input_cap = input - 3
    input_env = -input_cap
    @capitalist += input_cap
    @environmentalist += input_env
end 

def question1_2
    puts "Punishing the unlawful is more important than rewarding the just"
    input = gets().strip.to_i
    input_aut = input - 3
    input_hum = -input_aut
    @authoratarian += input_aut
    @humanitarian += input_hum
end

def question1_3
    puts "Leniance on criminals is a valid sacrifice for the growth of the economy"
    input = gets().strip.to_i
    input_aut = input - 3 
    input_cap = -input_aut
    @authoratarian += input_aut
    @capitalist += input_cap
end

def question1_4
    puts "Neglecting the environmental impact of programs is justified if it improves the lives of the people"
    input = gets().strip.to_i
    input_hum = input - 3
    input_env = -input_hum
    @humanitarian +=input_hum
    @environmentalist += input_env
end

# phase 2 questions 
def question2_env1
    puts "The goverment should allow sale of agriland to foreign buyers at the expence of the enviroment."
    input = gets().strip.to_i
    input_env = -(input - 3)
end
def question2_cap1
    puts "Sunday pay should stay at double wages."
    input = gets().strip.to_i
    input_cap = -(input - 3)
end
def question2_hum1
    puts "The government should increase foreign aid"
    input = gets().strip.to_i
    input_hum = input - 3
end
def question2_aut1
    puts "Citizens should lose their citizenship if they join a terrorist group"
    input = gets().strip.to_i
    input_aut = input - 3
end
def question2_env2
    puts "Disposible, non-biodegradable products should be banned."
    input = gets().strip.to_i
    input_env = input - 3
end
def question2_cap2
    puts "Tax rates for all buisnesses should be lowered."
    input = gets().strip.to_i
    input_cap = input - 3
end
def question2_hum2
    puts "There should be less restrictions on welfare benifits."
    input = gets().strip.to_i
    input_hum = input - 3
end
def question2_aut2
    puts "The government should regulate social media."
    input = gets().strip.to_i
    input_aut = input - 3
end

# Phase 3 questions

def question3_1
    puts "Abortion should be legal"
    input = gets().strip.to_i
    input_abo = input - 3
    @abortion += input_abo
end

def question3_2
    puts "Government should require children to be vaccinated for preventable diseases"
    input = gets().strip.to_i
    input_vac = input - 3 
    @vaccines += input_vac
end

def question3_3
    puts "Parental leave payments should be based on the parents wage"
    input = gets().strip.to_i
    input_par = input - 3 
    @parental_leave += input_par
end

def question3_4
    puts "The government should fund the Safe Schools Coalition"
    input = gets().strip.to_i
    input_ssc = input - 3
    @ssc += input_ssc
end

def question3_5
    puts "Same sex marriage should be legal"
    input = gets().strip.to_i
    input_marriage = input - 3
    @same_sex += input_marriage
end

def question3_6
    puts "Euthanasia should be legal"
    input = gets().strip.to_i
    input_euth = input - 3
    @euthanasia += input_euth
end

def question3_7
    puts "The death penalty should be legal"
    input = gets.strip.to_i
    input_death = input - 3
    @death_penalty += input_death
end

def question3_8
    puts "Drug testing should be legal at festivals"
    input = gets.strip.to_i
    input_drugs = input - 3
    @drug_testing +=input_drugs
end


# Supplementary qs
def question4_1
    puts "Nuclear energy should be further implemented in Australia"
    input = gets.strip.to_i
    input_nuclear = input - 3
    @nuclear_energy += input_nuclear
end

def question4_2
    puts "Businesses should be required to have women on board of directors"
    input = gets().strip.to_i
    input_quota = input - 3
    @director_quotas += input_quota
end

def question4_3
    puts "Australia should accept immigrants from asylum seeking boats"
    input = gets().strip.to_i
    input_asylum = input - 3 
    @asylum += input_asylum
end

def question4_4
    puts "Australia should end the monarchy and become a republic"
    input = gets().strip.to_i
    input_monarchy = input -3 
    @monarchy += input_monarchy
end



def percent_dif_lib_env
    if values[0][:env] >= @enviromentalist
        output = @enviromentalist / values[0][:env]
        return output
    elsif values[0][:env] < @enviromentalist
        diff = @enviromentalist - values[0][:env]
        score = values[0][:env] - diff
        output = score / values[0][:env]
        return output
    end
end
def percent_dif_lib_cap
    if values[0][:cap] >= @capatalist
        output = @capatalist / values[0][:cap]
        return output
    elsif values[0][:cap] < @capatalist
        diff = @capatalist - values[0][:cap]
        score = values[0][:cap] - diff
        output = score / values[0][:cap]
        return output
    end
end
def percent_dif_lib_hum
    if values[0][:hum] >= @humanitarian
        output = @humanitarian / values[0][:hum]
        return output
    elsif values[0][:hum] < @humanitarian
        diff = @humanitarian - values[0][:hum]
        score = values[0][:hum] -diff
        output = score / values[0][:hum]
        return output
    end
end
def percent_dif_lib_aut
    if values[0][:aut] >= @authoritarian
        output = @authoritarian / values[0][:aut]
        return output
    elsif values[0][:aut] < @authoritarian
        diff = @authoritarian - values[0][:aut]
        score = values[0][:aut] -diff
        output = score / values[0][:aut]
        return output
    end
end
def percent_dif_lab_env
    if values[1][:env] >= @enviromentalist
        output = @enviromentalist / values[1][:env]
        return output
    elsif values[1][:env] < @enviromentalist
        diff = @enviromentalist - values[1][:env]
        score = values[1][:env] -diff
        output = score / values[1][:env]
        return output
    end
end
def percent_dif_lab_cap
    if values[1][:cap] >= @capatalist
        output = @capatalist / values[1][:cap]
        return output
    elsif values[1][:cap] < @capatalist
        diff = @capatalist - values[1][:cap]
        score = values[1][:cap] - diff
        output = score / values[1][:cap]
        return output
    end
end
def percent_dif_lab_hum
    if values[1][:hum] >= @humanitarian
        output = @humanitarian / values[1][:hum]
        return output
    elsif values[1][:hum] < @humanitarian
        diff = @humanitarian - values[1][:hum]
        score = values[1][:hum] -diff
        output = score / values[1][:hum]
        return output
    end
end
def percent_dif_lab_aut
    if values[1][:aut] >= @authoritarian
        output = @authoritarian / values[1][:aut]
        return output
    elsif values[1][:aut] < @authoritarian
        diff = @authoritarian - values[1][:aut]
        score = values[1][:aut] -diff
        output = score / values[1][:aut]
        return output
    end
end
def percent_dif_gre_env
    if values[2][:env] >= @enviromentalist
        output = @enviromentalist / values[2][:env]
        return output
    elsif values[2][:env] < @enviromentalist
        diff = @enviromentalist - values[2][:env]
        score = values[2][:env] - diff
        output = score / values[2][:env]
        return output
    end
end
def percent_dif_gre_cap
    if values[2][:cap] >= @capatalist
        output = @capatalist / values[2][:cap]
        return output
    elsif values[2][:cap] < @capatalist
        diff = @capatalist - values[2][:cap]
        score = values[2][:cap] - diff
        output = score / values[2][:cap]
        return output
    end
end
def percent_dif_gre_hum
    if values[2][:hum] >= @humanitarian
        output = @humanitarian / values[2][:hum]
        return output
    elsif values[2][:hum] < @humanitarian
        diff = @humanitarian - values[2][:hum]
        score = values[2][:hum] -diff
        output = score / values[2][:hum]
        return output
    end
end
def percent_dif_gre_aut
    if values[2][:aut] >= @authoritarian
        output = @authoritarian / values[2][:aut]
        return output 
    elsif values[2][:aut] < @authoritarian
        diff = @authoritarian - values[2][:aut]
        score = values[2][:aut] -diff
        output = score / values[2][:aut]
        return output
    end
end




def percentage_dif_lib_values
    result = ((percent_dif_lib_env + percent_dif_lib_cap + percent_dif_lib_hum + percent_dif_lib_aut) / 4)
    return result 
end

def percentage_dif_lab_values
    result = ((percent_dif_lab_env + percent_dif_lab_cap + percent_dif_lab_hum + percent_dif_lab_aut)/4)
    return result 
end 

def percentage_dif_gre_values
    result = ((percent_dif_gre_env + percent_dif_gre_cap + percent_dif_gre_hum + percent_dif_gre_aut)/4)
    return result
end

end