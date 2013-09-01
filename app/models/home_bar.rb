class HomeBar < ActiveRecord::Base
  attr_accessible :name, :description, :main_image, :phone_number, :cellphone_number,
                  :address, :number, :complement, :zip, :neighborhood, :city, :state, :country_bar

  has_attached_file :main_image,
                    :styles => {:home => "400x300#", :thumb => "100x100#"},
                    :url => "/assets/home_bars/:id/images/main_:style.:extension",
                    :path => ":rails_root/public/assets/home_bars/:id/images/main_:style.:extension"

  validates_presence_of :name, :address, :number
end