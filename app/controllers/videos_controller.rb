class VideosController < ApplicationController
    def index
        @videos = video.all
    end
    
    def new 
        @video = video.new
    end
    
    def create
        @video= video.new(params.require(:video).permit(:user,:link,:comment))
        @video.save
    end
    
    def destroy
        Video.find(params[:id]).destroy
        redirect_to video_path , notice: "video destroyed!"
    end
    
    def edit
        @video = Video.find(params[:id])
    end
    
    def update
        v = Video.find(params[:id])
        v.update(user: params[:user], link: params[:link], comment: params[:comment])
    end
    
end
