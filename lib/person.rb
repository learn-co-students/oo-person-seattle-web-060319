class Person
	def initialize(name)
		@name = name
		@bank_account = 25
		@happiness = 8
		@hygiene = 8
	end

	def name
		@name
	end

	def bank_account
		@bank_account
	end

	def bank_account=(updated_bank_account)
		@bank_account = updated_bank_account
	end

	def happiness
		@happiness
	end

	def happiness=(new_happiness)
		if new_happiness >=10
			@happiness = 10
		elsif new_happiness <= 0
			@happiness = 0
		else @happiness = new_happiness
		end
	end

	def hygiene
		@hygiene
	end

	def hygiene=(new_hygiene)
		if new_hygiene >= 10
			@hygiene = 10
		elsif new_hygiene <= 0
			@hygiene = 0
		else @hygiene = new_hygiene
		end
	end

	def happy?
		if @happiness > 7
			return true
		else
			return false
		end
	end

	def clean?
		if @hygiene > 7
			return true
		else
			return false
		end
	end

	def get_paid(salary)
		@bank_account += salary
		return "all about the benjamins"
	end

	def take_bath
		self.hygiene += 4
		return "♪ Rub-a-dub just relaxing in the tub ♫"
	end

	def work_out
		self.hygiene -= 3
		self.happiness += 2
		return "♪ another one bites the dust ♫"
	end

	def call_friend(friend)
		self.happiness += 3
		friend.happiness += 3
		return "Hi #{friend.name}! It's #{self.name}. How are you?"
	end

	def start_conversation(friend, topic)
		case topic
		when "politics"
			self.happiness -= 2
			friend.happiness -= 2
			return "blah blah partisan blah lobbyist"
		when "weather"
			self.happiness += 1
			friend.happiness += 1
			return "blah blah sun blah rain"
		else
			return "blah blah blah blah blah"
		end
	end
end









































