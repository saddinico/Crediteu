class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    if resource.is_company == false
      deals_path
    elsif resource.is_company == true
      companies_path
    end
  end

end
