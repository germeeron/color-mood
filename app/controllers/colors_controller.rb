class ColorsController < ApplicationController
    
    # GET /colors
    def index
        @colors = Color.all
    end

    # GET /colors/new
    def new
        @color = Color.new
    end

    # POST /colors
    def create
        @color = Color.new(color_params)

        if @color.save
            redirect_to colors_path     # location: /colors
        else
            render :new
        end
    end

    # GET /colors/:id
    def show
        @color = Color.find(params[:id])
    end       

    # GET /colors/:id/edit    
    def edit
        @color = Color.find(params[:id])
    end       
    
    # PATCH /colors/:id
    def update
        @color = Color.find(params[:id])

        if @color.update(color_params)
            redirect_to @color
        else
            render :edit
        end
    end     

    # DELETE /colors/:id
    def destroy
        @color = Color.find(params[:id])
        @color.destroy

        redirect_to root_path
    end     

    private

    def color_params
        params.require(:color).permit(:user, :name, :mood)
    end
end