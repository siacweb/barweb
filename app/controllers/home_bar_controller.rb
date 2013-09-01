class HomeBarController < ApplicationController

  def index
    #@home_bar = HomeBar.find_all_by_name(get_current_name)
    @home_bar = HomeBar.all

    #@general_informations = GeneralInformation.all
    #@general_informations = GeneralInformation.find params[:general_informations_id]
  end

end