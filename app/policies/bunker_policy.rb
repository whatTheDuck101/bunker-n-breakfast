class BunkerPolicy < ApplicationPolicy
  def show?
    true
  end

  def create?
    true
  end

  private

  def user_is_logged_in?
    record.user == user
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
