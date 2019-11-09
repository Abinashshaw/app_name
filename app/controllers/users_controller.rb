class UsersController < ApplicationController
  def index
    @users=User.all.order(user_name: :asc).limit(50)
    respond_to do |format|
      format.html
      format.csv { send_data @users.to_csv(['user_name','user_email','phone_number'])}
    end
  end
end