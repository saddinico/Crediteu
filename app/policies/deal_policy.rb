class DealPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    user.is_company
  end

  def update?
    user.is_company
  end


  def show?
    true
  end
end
