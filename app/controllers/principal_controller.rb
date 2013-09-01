class PrincipalController < ApplicationController

  def index
    #TODO: buscar só a página ativa
    @principals = Principal.all

  end

end