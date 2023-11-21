class JetsController < ApplicationController
  before_action :set_jet, only: [:show]

  def index
    @jets = Jet.all
  end

  def show
  end

  def new
    @jet = Jet.new
  end

  def create
    @jet = Jet.new(jet_params)
    @jet.user = current_user
    if @jet.save
      redirect_to jet_path(@jet), notice: 'jet was successfully created.'
    else
      render :new, status: :unprocessable_entity
    end
  end

  private
  def set_jet
    @jet = Jet.find(params[:id])
  end
  def jet_params
    params.require(:jet).permit(:name, :description, :price, :user_id)
  end
end
