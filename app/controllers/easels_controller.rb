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
    if easel.save
        render json: easel
    else
        render json: {error: 'error!'}
    end 
   end

   def grab_image
    url = params[:image]
    downloaded_image = url
    
    user_id = params[:user_id]
    user = User.find(user_id)
    easels = user.easels.count + 1
    easel = Easel.create(easel_params)
    byebug
    self.photo.attach(io: downloaded_image, filename: '#{params[user_id]}/#{easels}.jpg')

end

   private

   def easel_params
    params.require(:easel).permit(:user_id, :image)
   end

end
