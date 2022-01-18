class TablefriendsController < ApplicationController
  before_action :set_tablefriend, only: %i[ show edit update destroy ]

  # GET /tablefriends or /tablefriends.json
  def index
    @tablefriends = Tablefriend.all
  end

  # GET /tablefriends/1 or /tablefriends/1.json
  def show
  end

  # GET /tablefriends/new
  def new
    @tablefriend = Tablefriend.new
  end

  # GET /tablefriends/1/edit
  def edit
  end

  # POST /tablefriends or /tablefriends.json
  def create
    @tablefriend = Tablefriend.new(tablefriend_params)

    respond_to do |format|
      if @tablefriend.save
        format.html { redirect_to tablefriend_url(@tablefriend), notice: "Tablefriend was successfully created." }
        format.json { render :show, status: :created, location: @tablefriend }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @tablefriend.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tablefriends/1 or /tablefriends/1.json
  def update
    respond_to do |format|
      if @tablefriend.update(tablefriend_params)
        format.html { redirect_to tablefriend_url(@tablefriend), notice: "Tablefriend was successfully updated." }
        format.json { render :show, status: :ok, location: @tablefriend }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @tablefriend.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tablefriends/1 or /tablefriends/1.json
  def destroy
    @tablefriend.destroy

    respond_to do |format|
      format.html { redirect_to tablefriends_url, notice: "Tablefriend was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tablefriend
      @tablefriend = Tablefriend.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tablefriend_params
      params.require(:tablefriend).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
