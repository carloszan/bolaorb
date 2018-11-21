class GamePolicy < ApplicationPolicy
  def new?
    create?
  end

  def create?
    user.admin?
  end

  def update?
    user.admin?
  end

  def edit?
    update?
  end

  def destroy?
    user.admin?
  end
end