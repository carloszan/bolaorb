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

  def finished?
    user.admin?
  end

  def close?
    finished?
  end
end