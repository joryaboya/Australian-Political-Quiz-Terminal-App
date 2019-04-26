require_relative "./DataBase"

user = DataBase::Database.new("Sam")

main_menu = DataBase::main_menu
quiz_menu = DataBase::quiz_menu


# POSITIVE TEST 1:

puts user.main_menu




