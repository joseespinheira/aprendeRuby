class ArduinosController < ApplicationController
  before_action :set_arduino, only: [:show, :edit, :update, :destroy]

  # GET /arduinos
  # GET /arduinos.json
  def index
    @arduinos = Arduino.all
  end

  # GET /arduinos/1
  # GET /arduinos/1.json
  def show
  end

  # GET /arduinos/new
  def new
    @arduino = Arduino.new
  end

  # GET /arduinos/1/edit
  def edit
  end

  # POST /arduinos
  # POST /arduinos.json
  def create
    @arduino = Arduino.new(arduino_params)

    respond_to do |format|
      if @arduino.save
        format.html { redirect_to @arduino, notice: 'Arduino was successfully created.' }
        format.json { render :show, status: :created, location: @arduino }
      else
        format.html { render :new }
        format.json { render json: @arduino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /arduinos/1
  # PATCH/PUT /arduinos/1.json
  def update
    respond_to do |format|
      if @arduino.update(arduino_params)
        format.html { redirect_to @arduino, notice: 'Arduino was successfully updated.' }
        format.json { render :show, status: :ok, location: @arduino }
      else
        format.html { render :edit }
        format.json { render json: @arduino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /arduinos/1
  # DELETE /arduinos/1.json
  def destroy
    @arduino.destroy
    respond_to do |format|
      format.html { redirect_to arduinos_url, notice: 'Arduino was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_arduino
      @arduino = Arduino.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def arduino_params
      params.require(:arduino).permit(:ip, :comando_id)
    end
end
