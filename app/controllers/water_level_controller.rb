class WaterLevelController < ApplicationController
  def insert_wl
    #wl = Water_level.new(:dt => dt, :hour => hour, :level => level)
    wl = WaterLevel.new(wl_params)
    #wl = wl_params
    wl.save

    # diz que o metodo não tem uma view associada
    # não renderiza nada
    render :none
  end

  private
  # Metodo privado para dizer quais atributos da requisição
  # podem ser salvos no banco de dados
  # rails strong params
  def wl_params
    params.permit(:dt, :hour, :level)

  end
end
