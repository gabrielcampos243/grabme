class PartnersController < ApplicationController
  def index
    @partners = Partner.all
  end

  def show
    @partner = Partner.find(params[:id])
  end

  def new
    @partner = Partner.new
  end

  def create
    @partner = Partner.new(partner_params)
    @partner.name = current_user.username
    @partner.user_id = current_user.id
    if @partner.save
      redirect_to dashboard_path
   else
    render :message
    end
  end


  def edit
    @partner= Partner.find(params[:id])
  end

  def update
    @partner = Partner.find(params[:id])
    @partner.update(partner_params)
    redirect_to  dashboard_path
  end

  def destroy
    @partner = Partner.find_by(user_id: current_user.id)
    @partner.destroy
    redirect_to root_path, status: :see_other
  end

  def my_service
   @partner = Partner.find_by(user_id: current_user.id)
  end

  private

  def partner_description
    params.require(:partner).permit(:description)
  end

  def partner_params
    params.require(:partner).permit(:description, :price, :photo)
  end
end
