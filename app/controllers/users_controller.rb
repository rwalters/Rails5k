class UsersController < AppliationController
  def index
    render json: User.all
  end
end
