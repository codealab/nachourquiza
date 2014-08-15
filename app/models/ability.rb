class Ability
  include CanCan::Ability

  def initialize(user)
    current_user ||= User.new
    alias_action :read, :search, :to => :default_actions
    alias_action :edit, :update, :show, :to => :user_actions

    can :user_actions, User, :id => current_user.id

    if current_user.admin?
        can :manage, :all
    else
        
    end

  end

end