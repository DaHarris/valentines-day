class ValentinesController < ApplicationController

  def welcome
    render :layout => false
  end

  def new
    @valentine = Valentine.new
    @valentines = Valentine.all
  end

  def create
    @valentine = Valentine.new(valentine_params)
    if @valentine.save
      redirect_to new_valentine_path, :notice => 'Thank you!!!!!!'
    else
      redirect_to new_valentine_path, :notice => ':((((( try again plz.'
    end
  end

  def valentine_params
    params.require(:valentine).permit(:name, :message)
  end

end
