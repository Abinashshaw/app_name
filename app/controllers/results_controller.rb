class ResultsController < ApplicationController
  def my_results
    @results = Result.all.order(user_name: :asc)
    respond_to do |format|
      format.html
      format.csv { send_data @results.to_csv(['user_name','user_email','phone_number']) }
    end
  end
end
