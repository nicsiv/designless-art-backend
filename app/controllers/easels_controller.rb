class EaselsController < ApplicationController

   def index
    easels = Easel.all
    render json: easels
   end  

   def show
    easel = Easel.find_by(id: params[:id])
    render json: easel
   end

   def create
    easel = Easel.new(easel_params)
    easel.save
    render json: easel
    
   end

   def grab_image
    
    url = params[:easel][:image]    
    user_id = params[:user_id]
    easel = Easel.create(easel_params)
    
    end

   private

   def easel_params
    params.require(:easel).permit(:user_id, :image)
   end

end
