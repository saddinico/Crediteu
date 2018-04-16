class CompanyPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def create?
    user.is_company?
  end

  def update?
    user.is_company? && record.user == user
  end

end
