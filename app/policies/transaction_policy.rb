class TransactionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def new?
    !user.is_company
  end

  def create?
    !user.is_company
  end
end
