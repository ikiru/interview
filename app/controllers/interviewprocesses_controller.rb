class InterviewprocessesController < ApplicationController
  before_action :set_interviewprocess, only: [:show, :edit, :update, :destroy]

  # GET /interviewprocesses
  # GET /interviewprocesses.json
  def index
    @interviewprocesses = Interviewprocess.all
  end

  # GET /interviewprocesses/1
  # GET /interviewprocesses/1.json
  def show
  end

  # GET /interviewprocesses/new
  def new
    @interviewprocess = Interviewprocess.new
  end

  # GET /interviewprocesses/1/edit
  def edit
  end

  # POST /interviewprocesses
  # POST /interviewprocesses.json
  def create
    @interviewprocess = Interviewprocess.new(interviewprocess_params)

    respond_to do |format|
      if @interviewprocess.save
        format.html { redirect_to @interviewprocess, notice: 'Interviewprocess was successfully created.' }
        format.json { render :show, status: :created, location: @interviewprocess }
      else
        format.html { render :new }
        format.json { render json: @interviewprocess.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /interviewprocesses/1
  # PATCH/PUT /interviewprocesses/1.json
  def update
    respond_to do |format|
      if @interviewprocess.update(interviewprocess_params)
        format.html { redirect_to @interviewprocess, notice: 'Interviewprocess was successfully updated.' }
        format.json { render :show, status: :ok, location: @interviewprocess }
      else
        format.html { render :edit }
        format.json { render json: @interviewprocess.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /interviewprocesses/1
  # DELETE /interviewprocesses/1.json
  def destroy
    @interviewprocess.destroy
    respond_to do |format|
      format.html { redirect_to interviewprocesses_url, notice: 'Interviewprocess was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_interviewprocess
      @interviewprocess = Interviewprocess.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def interviewprocess_params
      params.require(:interviewprocess).permit(:interview_number, :position_id, :interview_type_id, :question_id, :project_id, :comments)
    end
end
