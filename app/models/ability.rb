class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.has_role? :admin
      can :manage, :all
    elsif user.has_role? :organiser
      can :manage, Event
    else
      can :read, Event
    end
  end

end
