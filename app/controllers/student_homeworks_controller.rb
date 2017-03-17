class StudentHomeworksController < ApplicationController
  before_action :set_student_homework, only: [:show, :edit, :update, :destroy]

  # GET /student_homeworks
  # GET /student_homeworks.json
  def index
    @student_homeworks = StudentHomework.where(homework_id: params[:homework_id])
    @answers = Answer.where(homework_id: params[:homework_id])
  end

  # GET /student_homeworks/1
  # GET /student_homeworks/1.json
  def show
  end

  # GET /student_homeworks/new
  def new
    @student_homework = StudentHomework.new
  end

  # GET /student_homeworks/1/edit
  def edit
  end

  # POST /student_homeworks
  # POST /student_homeworks.json
  def create
    @student_homework = StudentHomework.new(student_homework_params)

    respond_to do |format|
      if @student_homework.save
        format.html { redirect_to @student_homework, notice: 'Student homework was successfully created.' }
        format.json { render :show, status: :created, location: @student_homework }
      else
        format.html { render :new }
        format.json { render json: @student_homework.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /student_homeworks/1
  # PATCH/PUT /student_homeworks/1.json
  def update
    respond_to do |format|
      if @student_homework.update(student_homework_params)
        format.html { redirect_to @student_homework, notice: 'Student homework was successfully updated.' }
        format.json { render :show, status: :ok, location: @student_homework }
      else
        format.html { render :edit }
        format.json { render json: @student_homework.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /student_homeworks/1
  # DELETE /student_homeworks/1.json
  def destroy
    @student_homework.destroy
    respond_to do |format|
      format.html { redirect_to student_homeworks_url, notice: 'Student homework was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_homework
      @student_homework = StudentHomework.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_homework_params
      params.require(:student_homework).permit(:student_id, :homework_id)
    end
end
