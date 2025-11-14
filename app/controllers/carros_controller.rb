class CarrosController < ApplicationController
  require "byebug"
  def index
    @carros = Carro.all
  end

  def show
    @carro = Carro.find(params[:id])
  end

  def editar
    @carro = Carro.find(params[:id])
  end

  def novo
    @carro = Carro.new
  end

  def criar
    carro = Carro.new(marca: params[:marca], modelo: params[:modelo], ano: params[:ano])
    if carro.marca.blank? && carro.modelo.blank? && carro.ano.blank?
      flash[:error] = "Todos os campos são obrigatórios."
      redirect_to "/carros/novo"
    else

      carro.save
      flash[:notice] = "Carro criado com sucesso."
      redirect_to carros_index_path
    end
  end

  def alterar
    carro = Carro.find(params[:id])
    carro.marca =  params[:marca]
    carro.modelo = params[:modelo]
    carro.ano = params[:ano]

    if carro.marca.blank? || carro.modelo.blank? || carro.ano.blank?
      flash[:error] = "Todos os campos são obrigatórios."
      @carro = carro
      redirect_to carro_editar_path(carro.id)
    else

      carro.save

      flash[:notice] = "Carro alterado com sucesso."
      redirect_to carro_show_path(carro.id)
    end
  end

  def apagar
    carro = Carro.find(params[:id])
    carro.destroy

    flash[:notice] = "Carro apagado com sucesso."
    redirect_to carros_index_path
  end
end
