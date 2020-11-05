class GamePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def new?
    @user.id == 1
  end
  def create?
    @user.id == 1
  end

  def edit?
    @user.id == 1
  end
  def update?
    @user.id == 1
  end

  def destroy
    @user.id == 1
  end

end
