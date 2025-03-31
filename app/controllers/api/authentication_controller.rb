class Api::AuthenticationController < ApiController
  include RESTFramework::ModelControllerMixin

  self.model = User
  self.fields = [ :authentication,  :email, :password ]

  def create
    auth_params = params.require(:authentication).permit(*self.class.fields)
    user = User.find_by(email: auth_params[:email])
    if user&.authenticate(auth_params[:password])
      token = JsonWebToken.encode(user_id: user.id)
      render json: {
        token: token,
        id: user.id,
        username: user.username
      }, status: :ok
    else
      render json: { error: "Unauthorized" }, status: :unauthorized
    end
  end
end
