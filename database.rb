class Database
    @@instantces = 0
    def self.get_instances
        @@instantces = 0 
    end
    def initialize(user_name)
        @user_name = user_name
        @enviromentalist = 0
        @capatalist = 0
        @humanitarian = 0
        @authoritarian = 0
        @abortion = 0
        @asylum = 0 
        @death_penalty = 0
        @director_quotas = 0
        @drug_testing = 0
        @euthanasia = 0
        @grapes = 0
        @monarchy = 0
        @nuclear_energy = 0
        @parental_leave = 0
        @same_sex_marriage = 0
        @ssc = 0
        @vaccines = 0
        @@instantces += 1
    end



    def question1_env_cap 
        puts "The free market is more important than sustaining the environment"
        input = gets().strip.to_i
        input_cap = input - 3
        input_env = -input_cap
        @capitalist += input_cap
        @environmentalist += input_env
    end
    def question1_aut_hum
        puts "Punishing the unlawful is more important than rewarding the just"
        input = gets().strip.to_i
        input_aut = input - 3
        input_hum = -input_aut
        @authoratarian += input_aut
        @humanitarian += input_hum
    end
    def question1_aut_cap
        puts "Leniance on criminals is a valid sacrifice for the growth of the economy"
        input = gets().strip.to_i
        input_aut = input - 3 
        input_cap = -input_aut
        @authoratarian += input_aut
        @capitalist += input_cap
    end
    def question1_env_hum
        puts "Neglecting the environmental impact of programs is justified if it improves the lives of the people"
        input = gets().strip.to_i
        input_hum = input - 3
        input_env = -input_hum
        @humanitarian +=input_hum
        @environmentalist += input_env
    end
    


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



    def question3_env1
        puts "Abortion should be legal"
        input = gets().strip.to_i
        input_abo = input - 3
        @abortion += input_abo
    end    
    def question3_env2
        puts "Government should require children to be vaccinated for preventable diseases"
        input = gets().strip.to_i
        input_vac = input - 3 
        @vaccines += input_vac
    end    
    def question3_cap1
        puts "Parental leave payments should be based on the parents wage"
        input = gets().strip.to_i
        input_par = input - 3 
        @parental_leave += input_par
    end    
    def question3_cap2
        puts "The government should fund the Safe Schools Coalition"
        input = gets().strip.to_i
        input_ssc = input - 3
        @ssc += input_ssc
    end    
    def question3_hum1
        puts "Same sex marriage should be legal"
        input = gets().strip.to_i
        input_marriage = input - 3
        @same_sex += input_marriage
    end    
    def question3_hum2
        puts "Euthanasia should be legal"
        input = gets().strip.to_i
        input_euth = input - 3
        @euthanasia += input_euth
    end    
    def question3_aut1
        puts "The death penalty should be legal"
        input = gets.strip.to_i
        input_death = input - 3
        @death_penalty += input_death
    end    
    def question3_aut2
        puts "Drug testing should be legal at festivals"
        input = gets.strip.to_i
        input_drugs = input - 3
        @drug_testing +=input_drugs
    end



    def question4_env
        puts "Nuclear energy should be further implemented in Australia"
        input = gets.strip.to_i
        input_nuclear = input - 3
        @nuclear_energy += input_nuclear
    end    
    def question4_cap
        puts "Businesses should be required to have women on board of directors"
        input = gets().strip.to_i
        input_quota = input - 3
        @director_quotas += input_quota
    end    
    def question4_hum
        puts "Australia should accept immigrants from asylum seeking boats"
        input = gets().strip.to_i
        input_asylum = input - 3 
        @asylum += input_asylum
    end    
    def question4_aut
        puts "Australia should end the monarchy and become a republic"
        input = gets().strip.to_i
        input_monarchy = input -3 
        @monarchy += input_monarchy
    end



    def percent_dif_lib_env
        if values[0][:env] >= @enviromentalist
            output = @enviromentalist / values[0][:env]
        elsif values[0][:env] < @enviromentalist
            diff = @enviromentalist - values[0][:env]
            score = values[0][:env] - diff
            output = score / values[0][:env]
        end
        return output
    end
    def percent_dif_lib_cap
        if values[0][:cap] >= @capatalist
            output = @capatalist / values[0][:cap]
        elsif values[0][:cap] < @capatalist
            diff = @capatalist - values[0][:cap]
            score = values[0][:cap] - diff
            output = score / values[0][:cap]
        end
        return output
    end
    def percent_dif_lib_hum
        if values[0][:hum] >= @humanitarian
            output = @humanitarian / values[0][:hum]
        elsif values[0][:hum] < @humanitarian
            diff = @humanitarian - values[0][:hum]
            score = values[0][:hum] - diff
            output = score / values[0][:hum]
        end
        return output
    end
    def percent_dif_lib_aut
        if values[0][:aut] >= @authoritarian
            output = @authoritarian / values[0][:aut]
        elsif values[0][:aut] < @authoritarian
            diff = @authoritarian - values[0][:aut]
            score = values[0][:aut] - diff
            output = score / values[0][:aut]
        end
        return output
    end
    def percent_dif_lab_env
        if values[1][:env] >= @enviromentalist
            output = @enviromentalist / values[1][:env]
        elsif values[1][:env] < @enviromentalist
            diff = @enviromentalist - values[1][:env]
            score = values[1][:env] - diff
            output = score / values[1][:env]
        end
        return output
    end
    def percent_dif_lab_cap
        if values[1][:cap] >= @capatalist
            output = @capatalist / values[1][:cap]
        elsif values[1][:cap] < @capatalist
            diff = @capatalist - values[1][:cap]
            score = values[1][:cap] - diff
            output = score / values[1][:cap]
        end
        return output
    end
    def percent_dif_lab_hum
        if values[1][:hum] >= @humanitarian
            output = @humanitarian / values[1][:hum]
        elsif values[1][:hum] < @humanitarian
            diff = @humanitarian - values[1][:hum]
            score = values[1][:hum] - diff
            output = score / values[1][:hum]
        end
        return output
    end
    def percent_dif_lab_aut
        if values[1][:aut] >= @authoritarian
            output = @authoritarian / values[1][:aut]
        elsif values[1][:aut] < @authoritarian
            diff = @authoritarian - values[1][:aut]
            score = values[1][:aut] - diff
            output = score / values[1][:aut]
        end
        return output
    end
    def percent_dif_gre_env
        if values[2][:env] >= @enviromentalist
            output = @enviromentalist / values[2][:env]
        elsif values[2][:env] < @enviromentalist
            diff = @enviromentalist - values[2][:env]
            score = values[2][:env] - diff
            output = score / values[2][:env]
        end
        return output
    end
    def percent_dif_gre_cap
        if values[2][:cap] >= @capatalist
            output = @capatalist / values[2][:cap]
        elsif values[2][:cap] < @capatalist
            diff = @capatalist - values[2][:cap]
            score = values[2][:cap] - diff
            output = score / values[2][:cap]
        end
        return output
    end
    def percent_dif_gre_hum
        if values[2][:hum] >= @humanitarian
            output = @humanitarian / values[2][:hum]
        elsif values[2][:hum] < @humanitarian
            diff = @humanitarian - values[2][:hum]
            score = values[2][:hum] - diff
            output = score / values[2][:hum]
        end
        return output
    end
    def percent_dif_gre_aut
        if values[2][:aut] >= @authoritarian
            output = @authoritarian / values[2][:aut]
        elsif values[2][:aut] < @authoritarian
            diff = @authoritarian - values[2][:aut]
            score = values[2][:aut] - diff
            output = score / values[2][:aut]
        end
        return output
    end
    
    
    
    def percent_dif_lib_abortion
        if topics[0][:abortion] >= @abortion
            output = abortion / topics[0][:abortion]
        elsif topics[0][:abortion] < @abortion
            diff = @abortion - topics[0][:abortion]
            score = topics[0][:abortion] - diff
            output = score / topics[0][:abortion]
        end
        return output
    end
    def percent_dif_lib_asylum
        if topics[0][:asylum] >= @asylum
            output = asylum / topics[0][:asylum]
        elsif topics[0][:asylum] < @asylum
            diff = @asylum - topics[0][:asylum]
            score = topics[0][:asylum] - diff
            output = score / topics[0][:asylum]
        end
        return output
    end
    def percent_dif_lib_death_penalty
        if topics[0][:death_penalty] >= @death_penalty
            output = death_penalty / topics[0][:death_penalty]
        elsif topics[0][:death_penalty] < @death_penalty
            diff = @death_penalty - topics[0][:death_penalty]
            score = topics[0][:death_penalty] - diff
            output = score / topics[0][:death_penalty]
        end
        return output
    end
    def percent_dif_lib_director_quotas
        if topics[0][:director_quotas] >= @director_quotas
            output = director_quotas / topics[0][:director_quotas]
        elsif topics[0][:director_quotas] < @director_quotas
            diff = @director_quotas - topics[0][:director_quotas]
            score = topics[0][:director_quotas] - diff
            output = score / topics[0][:director_quotas]
        end
        return output
    end
    def percent_dif_lib_drug_testing
        if topics[0][:drug_testing] >= @drug_testing
            output = drug_testing / topics[0][:drug_testing]
        elsif topics[0][:drug_testing] < @drug_testing
            diff = @drug_testing - topics[0][:drug_testing]
            score = topics[0][:drug_testing] - diff
            output = score / topics[0][:drug_testing]
        end
        return output
    end
    def percent_dif_lib_euthanasia
        if topics[0][:euthanasia] >= @euthanasia
            output = euthanasia / topics[0][:euthanasia]
        elsif topics[0][:euthanasia] < @euthanasia
            diff = @euthanasia - topics[0][:euthanasia]
            score = topics[0][:euthanasia] - diff
            output = score / topics[0][:euthanasia]
        end
        return output
    end
    def percent_dif_lib_grapes
        if topics[0][:grapes] >= @grapes
            output = grapes / topics[0][:grapes]
        elsif topics[0][:grapes] < @grapes
            diff = @grapes - topics[0][:grapes]
            score = topics[0][:grapes] - diff
            output = score / topics[0][:grapes]
        end
        return output
    end
    def percent_dif_lib_monarchy
        if topics[0][:monarchy] >= @monarchy
            output = monarchy / topics[0][:monarchy]
        elsif topics[0][:monarchy] < @monarchy
            diff = @monarchy - topics[0][:monarchy]
            score = topics[0][:monarchy] - diff
            output = score / topics[0][:monarchy]
        end
        return output
    end
    def percent_dif_lib_nuclear_energy
        if topics[0][:nuclear_energy] >= @nuclear_energy
            output = nuclear_energy / topics[0][:nuclear_energy]
        elsif topics[0][:nuclear_energy] < @nuclear_energy
            diff = @nuclear_energy - topics[0][:nuclear_energy]
            score = topics[0][:nuclear_energy] - diff
            output = score / topics[0][:nuclear_energy]
        end
        return output
    end
    def percent_dif_lib_parental_leave
        if topics[0][:parental_leave] >= @parental_leave
            output = parental_leave / topics[0][:parental_leave]
        elsif topics[0][:parental_leave] < @parental_leave
            diff = @parental_leave - topics[0][:parental_leave]
            score = topics[0][:parental_leave] - diff
            output = score / topics[0][:parental_leave]
        end
        return output
    end
    def percent_dif_lib_same_sex_marriage
        if topics[0][:same_sex_marriage] >= @same_sex_marriage
            output = same_sex_marriage / topics[0][:same_sex_marriage]
        elsif topics[0][:same_sex_marriage] < @same_sex_marriage
            diff = @same_sex_marriage - topics[0][:same_sex_marriage]
            score = topics[0][:same_sex_marriage] - diff
            output = score / topics[0][:same_sex_marriage]
        end
        return output
    end
    def percent_dif_lib_ssc
        if topics[0][:ssc] >= @ssc
            output = ssc / topics[0][:ssc]
        elsif topics[0][:ssc] < @ssc
            diff = @ssc - topics[0][:ssc]
            score = topics[0][:ssc] - diff
            output = score / topics[0][:ssc]
        end
        return output
    end
    def percent_dif_lib_vaccines
        if topics[0][:vaccines] >= @vaccines
            output = vaccines / topics[0][:vaccines]
        elsif topics[0][:vaccines] < @vaccines
            diff = @vaccines - topics[0][:vaccines]
            score = topics[0][:vaccines] - diff
            output = score / topics[0][:vaccines]
        end
        return output
    end
    def percent_dif_lab_abortion
        if topics[1][:abortion] >= @abortion
            output = abortion / topics[1][:abortion]
        elsif topics[1][:abortion] < @abortion
            diff = @abortion - topics[1][:abortion]
            score = topics[1][:abortion] - diff
            output = score / topics[1][:abortion]
        end
        return output
    end
    def percent_dif_lab_asylum
        if topics[1][:asylum] >= @asylum
            output = asylum / topics[1][:asylum]
        elsif topics[1][:asylum] < @asylum
            diff = @asylum - topics[1][:asylum]
            score = topics[1][:asylum] - diff
            output = score / topics[1][:asylum]
        end
        return output
    end
    def percent_dif_lab_death_penalty
        if topics[1][:death_penalty] >= @death_penalty
            output = death_penalty / topics[1][:death_penalty]
        elsif topics[1][:death_penalty] < @death_penalty
            diff = @death_penalty - topics[1][:death_penalty]
            score = topics[1][:death_penalty] - diff
            output = score / topics[1][:death_penalty]
        end
        return output
    end
    def percent_dif_lab_director_quotas
        if topics[1][:director_quotas] >= @director_quotas
            output = director_quotas / topics[1][:director_quotas]
        elsif topics[1][:director_quotas] < @director_quotas
            diff = @director_quotas - topics[1][:director_quotas]
            score = topics[1][:director_quotas] - diff
            output = score / topics[1][:director_quotas]
        end
        return output
    end
    def percent_dif_lab_drug_testing
        if topics[1][:drug_testing] >= @drug_testing
            output = drug_testing / topics[1][:drug_testing]
        elsif topics[1][:drug_testing] < @drug_testing
            diff = @drug_testing - topics[1][:drug_testing]
            score = topics[1][:drug_testing] - diff
            output = score / topics[1][:drug_testing]
        end
        return output
    end
    def percent_dif_lab_euthanasia
        if topics[1][:euthanasia] >= @euthanasia
            output = euthanasia / topics[1][:euthanasia]
        elsif topics[1][:euthanasia] < @euthanasia
            diff = @euthanasia - topics[1][:euthanasia]
            score = topics[1][:euthanasia] - diff
            output = score / topics[1][:euthanasia]
        end
        return output
    end
    def percent_dif_lab_grapes
        if topics[1][:grapes] >= @grapes
            output = grapes / topics[1][:grapes]
        elsif topics[1][:grapes] < @grapes
            diff = @grapes - topics[1][:grapes]
            score = topics[1][:grapes] - diff
            output = score / topics[1][:grapes]
        end
        return output
    end
    def percent_dif_lab_monarchy
        if topics[1][:monarchy] >= @monarchy
            output = monarchy / topics[1][:monarchy]
        elsif topics[1][:monarchy] < @monarchy
            diff = @monarchy - topics[1][:monarchy]
            score = topics[1][:monarchy] - diff
            output = score / topics[1][:monarchy]
        end
        return output
    end
    def percent_dif_lab_nuclear_energy
        if topics[1][:nuclear_energy] >= @nuclear_energy
            output = nuclear_energy / topics[1][:nuclear_energy]
        elsif topics[1][:nuclear_energy] < @nuclear_energy
            diff = @nuclear_energy - topics[1][:nuclear_energy]
            score = topics[1][:nuclear_energy] - diff
            output = score / topics[1][:nuclear_energy]
        end
        return output
    end
    def percent_dif_lab_parental_leave
        if topics[1][:parental_leave] >= @parental_leave
            output = parental_leave / topics[1][:parental_leave]
        elsif topics[1][:parental_leave] < @parental_leave
            diff = @parental_leave - topics[1][:parental_leave]
            score = topics[1][:parental_leave] - diff
            output = score / topics[1][:parental_leave]
        end
        return output
    end
    def percent_dif_lab_same_sex_marriage
        if topics[1][:same_sex_marriage] >= @same_sex_marriage
            output = same_sex_marriage / topics[1][:same_sex_marriage]
        elsif topics[1][:same_sex_marriage] < @same_sex_marriage
            diff = @same_sex_marriage - topics[1][:same_sex_marriage]
            score = topics[1][:same_sex_marriage] - diff
            output = score / topics[1][:same_sex_marriage]
        end
        return output
    end
    def percent_dif_lab_ssc
        if topics[1][:ssc] >= @ssc
            output = ssc / topics[1][:ssc]
        elsif topics[1][:ssc] < @ssc
            diff = @ssc - topics[1][:ssc]
            score = topics[1][:ssc] - diff
            output = score / topics[1][:ssc]
        end
        return output
    end
    def percent_dif_lab_vaccines
        if topics[1][:vaccines] >= @vaccines
            output = vaccines / topics[1][:vaccines]
        elsif topics[1][:vaccines] < @vaccines
            diff = @vaccines - topics[1][:vaccines]
            score = topics[1][:vaccines] - diff
            output = score / topics[1][:vaccines]
        end
        return output
    end
    def percent_dif_gre_abortion
        if topics[2][:abortion] >= @abortion
            output = abortion / topics[2][:abortion]
        elsif topics[2][:abortion] < @abortion
            diff = @abortion - topics[2][:abortion]
            score = topics[2][:abortion] - diff
            output = score / topics[2][:abortion]
        end
        return output
    end
    def percent_dif_gre_asylum
        if topics[2][:asylum] >= @asylum
            output = asylum / topics[2][:asylum]
        elsif topics[2][:asylum] < @asylum
            diff = @asylum - topics[2][:asylum]
            score = topics[2][:asylum] - diff
            output = score / topics[2][:asylum]
        end
        return output
    end
    def percent_dif_gre_death_penalty
        if topics[2][:death_penalty] >= @death_penalty
            output = death_penalty / topics[2][:death_penalty]
        elsif topics[2][:death_penalty] < @death_penalty
            diff = @death_penalty - topics[2][:death_penalty]
            score = topics[2][:death_penalty] - diff
            output = score / topics[2][:death_penalty]
        end
        return output
    end
    def percent_dif_gre_director_quotas
        if topics[2][:director_quotas] >= @director_quotas
            output = director_quotas / topics[2][:director_quotas]
        elsif topics[2][:director_quotas] < @director_quotas
            diff = @director_quotas - topics[2][:director_quotas]
            score = topics[2][:director_quotas] - diff
            output = score / topics[2][:director_quotas]
        end
        return output
    end
    def percent_dif_gre_drug_testing
        if topics[2][:drug_testing] >= @drug_testing
            output = drug_testing / topics[2][:drug_testing]
        elsif topics[2][:drug_testing] < @drug_testing
            diff = @drug_testing - topics[2][:drug_testing]
            score = topics[2][:drug_testing] - diff
            output = score / topics[2][:drug_testing]
        end
        return output
    end
    def percent_dif_gre_euthanasia
        if topics[2][:euthanasia] >= @euthanasia
            output = euthanasia / topics[2][:euthanasia]
        elsif topics[2][:euthanasia] < @euthanasia
            diff = @euthanasia - topics[2][:euthanasia]
            score = topics[2][:euthanasia] - diff
            output = score / topics[2][:euthanasia]
        end
        return output
    end
    def percent_dif_gre_grapes
        if topics[2][:grapes] >= @grapes
            output = grapes / topics[2][:grapes]
        elsif topics[2][:grapes] < @grapes
            diff = @grapes - topics[2][:grapes]
            score = topics[2][:grapes] - diff
            output = score / topics[2][:grapes]
        end
        return output
    end
    def percent_dif_gre_monarchy
        if topics[2][:monarchy] >= @monarchy
            output = monarchy / topics[2][:monarchy]
        elsif topics[2][:monarchy] < @monarchy
            diff = @monarchy - topics[2][:monarchy]
            score = topics[2][:monarchy] - diff
            output = score / topics[2][:monarchy]
        end
        return output
    end
    def percent_dif_gre_nuclear_energy
        if topics[2][:nuclear_energy] >= @nuclear_energy
            output = nuclear_energy / topics[2][:nuclear_energy]
        elsif topics[2][:nuclear_energy] < @nuclear_energy
            diff = @nuclear_energy - topics[2][:nuclear_energy]
            score = topics[2][:nuclear_energy] - diff
            output = score / topics[2][:nuclear_energy]
        end
        return output
    end
    def percent_dif_gre_parental_leave
        if topics[2][:parental_leave] >= @parental_leave
            output = parental_leave / topics[2][:parental_leave]
        elsif topics[2][:parental_leave] < @parental_leave
            diff = @parental_leave - topics[2][:parental_leave]
            score = topics[2][:parental_leave] - diff
            output = score / topics[2][:parental_leave]
        end
        return output
    end
    def percent_dif_gre_same_sex_marriage
        if topics[2][:same_sex_marriage] >= @same_sex_marriage
            output = same_sex_marriage / topics[2][:same_sex_marriage]
        elsif topics[2][:same_sex_marriage] < @same_sex_marriage
            diff = @same_sex_marriage - topics[2][:same_sex_marriage]
            score = topics[2][:same_sex_marriage] - diff
            output = score / topics[2][:same_sex_marriage]
        end
        return output
    end
    def percent_dif_gre_ssc
        if topics[2][:ssc] >= @ssc
            output = ssc / topics[2][:ssc]
        elsif topics[2][:ssc] < @ssc
            diff = @ssc - topics[2][:ssc]
            score = topics[2][:ssc] - diff
            output = score / topics[2][:ssc]
        end
        return output
    end
    def percent_dif_gre_vaccines
        if topics[2][:vaccines] >= @vaccines
            output = vaccines / topics[2][:vaccines]
        elsif topics[2][:vaccines] < @vaccines
            diff = @vaccines - topics[2][:vaccines]
            score = topics[2][:vaccines] - diff
            output = score / topics[2][:vaccines]
        end
        return output
    end
    