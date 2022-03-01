class Audition < ActiveRecord::Base
    belongs_to :role

    # Audition#role returns an instance of role associated with this audition
    def role
        # binding.pry
        self.role.pluck(:character_name)
    end

    

end