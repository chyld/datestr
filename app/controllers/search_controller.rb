class SearchController < ApplicationController
  def results
    search = params[:search]
    @profiles = User.where(nil)
    @profiles = @profiles.where(:age => search[:age]) if search[:age].present?
    @profiles = @profiles.where(:gender => search[:gender]) if search[:gender].present?
    @profiles = @profiles.where(:state => search[:state]) if search[:state].present?
    @profiles = @profiles.where(:ethnicity => search[:ethnicity]) if search[:ethnicity].present?
    render 'users/index'
  end
end
