class EaselsController < ApplicationController

   def index
    easels = Easel.all
    render json: easels
   end  

   def show
    easel = Easel.find_by(id: params[:id])
    render json: easel.to_json(include: :user_ids)
   end

   def create
    easel = Easel.new(easel_params)
    easel.save
    render json: easel
   end

   private

   def easel_params
    params.require(:easel).permit(:user_id, :image)
   end

end
