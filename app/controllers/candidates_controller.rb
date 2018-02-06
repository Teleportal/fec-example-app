class CandidatesController < ApplicationController
  def index
    search_term = params[:search]
    response = Unirest.get("https://api.open.fec.gov/v1/candidates/?api_key=#{ENV["API_KEY"]}&name=#{search_term}")
    candidate = response.body 
    render json: candidate
  end
end
