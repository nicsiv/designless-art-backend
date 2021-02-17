class EaselsController < ApplicationController
   

   def index
    easels = Easel.all
    render json: easels
   end  

   def create
    easel = Easel.new(easel_params)
    if easel.save
        render json: easel
    else
        render json: {error: 'error!'}
    end 
   end

   private

   def easel_params
    params.require(:easel).permit(:name, :user_id, :image, :photo)
   end


end
