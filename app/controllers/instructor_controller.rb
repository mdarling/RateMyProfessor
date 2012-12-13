class InstructorController < Devise::RegistrationsController
  before_filter :creator
  def create
    @id = params[:instructor][:professor_id]
    @professor = Professor.find_by_id(@id)
    resource_params.delete(:professor_id)
    build_resource
    resource.professor = @professor
    if resource.save
      if resource.active_for_authentication?
        flash[:notice] = 'Successfully added instructor.' if is_navigational_format?
        sign_up(resource_name, resource)
        respond_with resource, :location => after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :signed_up_but_#{resource.inactive_message}" if is_navigational_format?
        expire_session_data_after_sign_in!
        respond_with resource, :location => after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      respond_with resource
    end
  end

  private
  def creator
    unless admin_signed_in?
      redirect_to :back, alert: 'You need to sign in or sign up before continuing.'
    end
  end

  def sign_up(resource_name, resource)
    sign_in(resource_name, resource)
  end
end
