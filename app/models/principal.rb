class Principal < ActiveRecord::Base
  attr_accessible :title, :description, :main_image, :gallery_image, :events_image, :contact_image, :follow_fb_image, :follow_tw_image

  validates_attachment_presence :main_image, :gallery_image, :events_image, :contact_image

  has_attached_file :main_image,
                    :styles => {:medium => "400x300#", :thumb => "100x100#"},
                    :url => "/assets/homes/:id/images/main_:style.:extension",
                    :path => ":rails_root/public/assets/homes/:id/images/main_:style.:extension"
  has_attached_file :gallery_image,
                    :styles => {:medium => "400x300#", :thumb => "100x100#"},
                    :url => "/assets/homes/:id/images/gallery_:style.:extension",
                    :path => ":rails_root/public/assets/homes/:id/images/gallery_:style.:extension"
  has_attached_file :events_image,
                    :styles => {:medium => "400x300#", :thumb => "100x100#"},
                    :url => "/assets/homes/:id/images/events_:style.:extension",
                    :path => ":rails_root/public/assets/homes/:id/images/events_:style.:extension"
  has_attached_file :contact_image,
                    :styles => {:medium => "400x300#", :thumb => "100x100#"},
                    :url => "/assets/homes/:id/images/contact_:style.:extension",
                    :path => ":rails_root/public/assets/homes/:id/images/contact_:style.:extension"
  has_attached_file :follow_fb_image,
                    :styles => {:medium => "400x300#", :thumb => "100x45#"},
                    :url => "/assets/homes/:id/images/follow_fb_:style.:extension",
                    :path => ":rails_root/public/assets/homes/:id/images/follow_fb_:style.:extension"
  has_attached_file :follow_tw_image,
                    :styles => {:medium => "400x300#", :thumb => "100x45#"},
                    :url => "/assets/homes/:id/images/follow_tw_:style.:extension",
                    :path => ":rails_root/public/assets/homes/:id/images/follow_tw_:style.:extension"

end