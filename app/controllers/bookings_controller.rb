class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
    # Bookings where the current user is the expert
    @as_expert = Booking.where(expert: current_user)
    # Bookings where the current user is the client
    @as_client = Booking.where(client: current_user)

    # All session that the current user is a part of
    @sessions = @as_expert | @as_client
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show
  end

  # GET /bookings/new
  def new
    @expert = User.find(params[:expert_id])
    @client = current_user

    @booking = Booking.new
    #@booking.expert_id = Profile.find(params[:expert_id])
    @booking.client_id = current_user.id
    @booking.expert_id = @expert.id 

    #@booking.expert = User.find(params[:user_id])
  end

  # GET /bookings/1/edit
  def edit
  end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(booking_params)

     temp_params = params.require(:booking).permit(:expert_id)
     @expert = User.find(temp_params[:expert_id])

    #@expert = User.find(params[:expert_id])
    @client = current_user

    @booking.client_id = current_user.id
    @booking.expert_id = @expert.id 
    # Shrine
  #   @amount = 500
  
  #   customer = Stripe::Customer.create(
  #     :email => params[:stripeEmail],
  #     :source  => params[:stripeToken]
  #   )
  
  #   charge = Stripe::Charge.create(
  #     :customer    => customer.id,
  #     :amount      => @amount,
  #     :description => 'Rails Stripe customer',
  #     :currency    => 'usd'
  #   )
  
  # rescue Stripe::CardError => e
  #   flash[:error] = e.message
  #   redirect_to new_charge_path

    # Redirecting if saved or not saved
    respond_to do |format|
      if @booking.save
        format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
        format.json { render :show, status: :created, location: @booking }
      else
        format.html { render :new }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    respond_to do |format|
      if @booking.update(booking_params)
        format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
        format.json { render :show, status: :ok, location: @booking }
      else
        format.html { render :edit }
        format.json { render json: @booking.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_booking
      @booking = Booking.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def booking_params
      params.require(:booking).permit(:expert_id, :client_id, :time, :duration, :rate_per_hour, :location, :charge_identifier)
    end
end
