class PrincipalController < ApplicationController

  def index
    #TODO: buscar só a página ativa
    @principals = Principal.all

  end

  def contact
    render('layouts/contact')
  end

end