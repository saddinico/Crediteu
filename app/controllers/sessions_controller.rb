class SessionsController < Devise::SessionsController
  protected

  def after_sign_in_path_for(resource)
    if resource.is_company == false
      deals_path
    elsif resource.is_company == true
      companies_path
    end
  end

end
