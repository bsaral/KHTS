class Ability
include CanCan::Ability

  def initialize(user)
	user ||= User.new 

	if user.role? :manager
      can :manage, Upload
    else
      #
    end
  end
end 
