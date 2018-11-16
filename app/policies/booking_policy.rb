class BookingPolicy < ApplicationPolicy

    def show?
      true
    end

    def create?
      user_is_logged_in?

    end

    def update?
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
