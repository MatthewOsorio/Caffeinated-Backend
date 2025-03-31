class Api::RootController < ApiController
  self.extra_actions = { test: :get }

  def root
    render json: { message: "Welcome to the API" }
  end
end
