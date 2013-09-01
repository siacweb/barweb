ActiveAdmin.register HomeBar do
  config.comments = false

  filter :name

  index do
    column :id
    column :name
    column :main_image do |record|
      image_tag(record.main_image.url(:thumb))
    end
    default_actions
  end

  show do
    attributes_table do
      row :id
      row :name
      row :description

      row :main_image do |record|
        image_tag(record.main_image.url(:thumb))
      end
      rows :phone_number, :cellphone_number

      rows :address, :number, :complement, :zip
      rows :neighborhood, :city, :state, :country_bar
    end
  end

  form :html => {:enctype => "multipart/form-data"} do |f|
    f.inputs I18n.t("activerecord.models.home_bar"), :multipart => true do
      f.input :name
      f.input :description
      f.input :main_image

      #TODO: COLOCAR ALGUMA MASCARA PRA N TER COMO ENVIAR ERRADO (HTML5?)
      f.input :phone_number
      f.input :cellphone_number

      #Endereço - TODO: colocar em parte separada - novo titulo
      f.input :country_bar
      f.input :state
      f.input :city
      f.input :address
      f.input :neighborhood
      f.input :number
      f.input :zip
      f.input :complement
    end
    f.actions
  end
end