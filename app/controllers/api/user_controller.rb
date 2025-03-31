class Api::UserController < ApiController
  include RESTFramework::ModelControllerMixin

  self.model = User
  self.fields = [ :username, :email, :password, :first_name, :last_name ]
end
