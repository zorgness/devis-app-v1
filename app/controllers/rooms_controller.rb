class RoomsController < ApplicationController

  def new
    @quotation = Quotation.find(params[:quotation_id])
    rooms_collection = ['chambre', 'salon', 'salle de bain', 'jardin', 'escalier', 'hall', 'couloir', 'toit', 'terrasse']
    rooms = []
    @quotation.rooms.each do |room|
      rooms << room.name
    end
    @collection = rooms_collection - rooms
    @room = Room.new
  end

  def create
    @quotation = Quotation.find(params[:quotation_id])
    @room = Room.new(room_params)
    @room.quotation = @quotation
    if @room.save
      redirect_to @quotation
    else
      render :new
    end
  end

  private

  def room_params
    params.require(:room).permit(:name, :quotation)
  end
end
