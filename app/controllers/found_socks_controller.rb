class FoundSocksController < ApplicationController

  def index
    @lost_socks = Sock.found
  end

  def new
    @lost_sock = Sock.new
  end

  def create
    @lost_sock = Sock.new(sock_params)
    if @lost_sock.save
      redirect_to :index, flash: "Sock Created! Good Jorb"
    else
      render :new, flash: "Fail"
    end
  end

  def edit
    @lost_sock = Sock.find(params[:id])
  end

  def update
    @lost_sock = Sock.find(params[:id])
    if @lost_sock.update_attributes(sock_params)
      redirect_to :index, flash: "WINNER! Found Sock!"
    else
      render :edit
    end
  end


  private

  def sock_params
    params.permit(:sock)
  end

end
