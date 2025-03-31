class Api::ShopReviewsController< ApiController
  include RESTFramework::ModelControllerMixin

  self.model= ShopReview
  self.fields = [ :id, :rating, :review, :recommend, :user_id, :shop_id, :shop_name ]
  before_action :authorize_request, only: [ :create, :update, :destroy ]

  def get_recordset
    ShopReview.order(created_at: :desc)
  end
end
