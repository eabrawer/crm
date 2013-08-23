require "./contact.rb"
require "./database.rb"

class CRM
	def print_main_menu
		puts "[1] Add contact"
		puts "[2] Modify contact"
		puts "[3] Delete contact"
		puts "[4] Display all"
		puts "[5] Display attribute"
		puts "[6] Exit"
		puts "Enter your option"
	end

	def main_menu
		print_main_menu
		user_select = gets.to_i
		call_option(user_select)
	end

	def call_option(user_select)
		add_new_contact if user_select == 1
		modify_contact if user_select == 2
		delete_contact if user_select == 3
		display_all_contacts if user_select == 4
		diplay_attribute if user_select == 5
		exit if user_select == 6
	end

	def add_new_contact
		print "Enter first name: "
		first_name = gets.chomp
		print "Enter last name: "
		last_name = gets.chomp
		print "Enter email: "
		email = gets.chomp
		print "Enter your note"
		note = gets.chomp
		print "Contact added"
		contact = Contact.new(first_name, last_name, email, note)
		main_menu
	end

	def modify_contact
		puts "Enter contact"
		name=gets.chomp
		@contacts.select do |x|
			x=name
		print name
		main_menu
		end
	end
end



crm_app = CRM.new 
crm_app.main_menu
crm_app.add_new_contact

database = Database.add_new_contact(contact)
Database.contacts




