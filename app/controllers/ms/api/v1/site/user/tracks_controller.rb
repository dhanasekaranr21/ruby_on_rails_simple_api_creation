class Ms::Api::V1::Site::User::TracksController < ApplicationController
    before_action :find_track,only: [:show]

    def index
       @tracks=UserTracking.all
       render json:@tracks
    end

    def show
        if @track
            render json:@track
        else
            render json:{error:"track not found"}
        end
        
    end

    def create
      @track = UserTracking.new(track_params)
        if @track.valid? && @track.save
            render json:@track
        else
            render json:{error:"track not created"}
        end
    end

    def update
        @track= UserTracking.find(params[:id])
        if @track.valid?
           @track.update(track_params)
           render json: { message:"track Updated Successfully"}
        else
           render json: {error:"track Not updated"}
        end
    end

    def destroy
        @track=UserTracking.find(params[:id])
        if @track
           @track.destroy
           render json: { message:"track Deleted Successfully"}
        else
           render json: {error:"track Not Deleted"}
        end
    end

    private

    def track_params
        params.require(:track).permit(:cookie,:referrer,:localReferrer,:userAgent,:fingerPrint,:url,:ticket_id,:serviceId,:city,:email,:mobile,:flag)
    end

    def find_track
        @track=UserTracking.find(params[:id])
    end
    
end
