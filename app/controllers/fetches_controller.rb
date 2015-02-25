class FetchesController < ApplicationController
  def new
  end

  def create
    @fetch = Fetch.new(fetch_params)
    @fetch.save

    redirect_to new_fetch_path
  end

  private
    def fetch_params
      params.require(:fetch).permit(:url)
    end
end
