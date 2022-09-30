class ProjectImagesController < ApplicationController

    def index
        image = ProjectImages.all 
        render json: image
    end

    def show
        image = ProjectImages.find_by(id: params[:id])
        render json: image
    end

    def create
        new_image= ProjectImages.create!(project_image_params)
        render json: new_image, status: :created
    end

    # def update
    #     update_project = Project.update!(project_params)
    #     render json: update_project
    # end

    def destroy
        image = ProjectImages.find_by(id: params[:id])
        image.destroy
    end


    private

    def project_image_params
        params.permit(:image_link, :project_id)
    end


end
