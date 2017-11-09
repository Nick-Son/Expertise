class ExpertiseAreasController < ApplicationController

  def index
    @expertise_areas = ExpertiseArea.all
  end

  def add
    current_user.expertise_areas << ExpertiseArea.find(params[:id])
    redirect_to expertise_areas_path
  end

  def remove 
    expertise = ExpertiseArea.find(params[:id])
    current_user.expertise_areas.delete(expertise)
    redirect_to expertise_areas_path
  end

  # def new
  #   @expertise_area = ExpertiseArea.new
  # end 

  # def create
  #   @expertise_area = ExpertiseArea.new(expertise_area_params)

  #   respond_to do |format|
  #     if @expertise_area.save
  #       format.html { redirect_to @expertise_area, 'Area of Expertise added' }
  #       format.json { render :show, status: :created, location: @expertise_area }
  #     else
  #       format.html { render :new }  
  #       format.json { render json: @expertise_area.errors, status: :unprocessable_entity }
  #     end 
  #   end  
  # end 

  # def update
    
  #   respond_to do |format|
  #     if @expertise_area.update(expertise_area_params)
  #       format.html { redirect_to @expertise_area, 'Area of Expertise added' }
  #       format.json { render :show, status: :created, location: @expertise_area }
  #     else
  #       format.html { render :new }  
  #       format.json { render json: @expertise_area.errors, status: :unprocessable_entity }
  #     end 
  #   end  
  # end 

  # def destroy
  #   @expertise_area.destroy
  #   respond_to do |format|
  #     format.html { redirect_to expertise_areas_url, notice: 'Area of Expertise removed' }
  #     format.json { head :no_content }
  #   end 
  # end 

  # private

  # def expertise_area_params
  #   params.require(:expertise_area).permit(:title, :description)
  # end 

end