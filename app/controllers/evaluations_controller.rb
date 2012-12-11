class EvaluationsController < ApplicationController
  # GET /evaluations
  # GET /evaluations.json
  before_filter :creator, :only => [:new, :create, :destroy]
  before_filter :editor, :only => [:edit, :update]
  before_filter :viewer, :only => [:index, :show]

  def index
    @course = Course.find(params[:course_id])
    @evaluations = Evaluation.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @evaluations }
    end
  end

  # GET /evaluations/1
  # GET /evaluations/1.json
  def show
    @evaluation = Evaluation.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @evaluation }
    end
  end

  # GET /evaluations/new
  # GET /evaluations/new.json
  def new
    @course = Course.find(params[:course_id])
    @evaluation = @course.evaluations.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @evaluation }
    end
  end

  # GET /evaluations/1/edit
  def edit
    @evaluation = Evaluation.find(params[:id])
    @course = Course.find(@evaluation.course_id)
    @userid = current_instructor.try(:id)
    @userid = -1 if @userid.nil?
    @professor = @course.professor
    unless (admin_signed_in? or @userid == @professor.instructor_id)
      redirect_to :back, alert: 'Cannot edit evaluation for this course.'
    end
  end

  # POST /evaluations
  # POST /evaluations.json
  def create
    @evaluation = Evaluation.new(params[:evaluation])
    @userid = current_instructor.try(:id)
    @userid = -1 if @userid.nil?
    @professor = @evaluation.course.professor
    unless (admin_signed_in? or @userid == @professor.instructor_id)
      redirect_to :back, alert: 'Cannot create evaluation for this course.'
    end

    respond_to do |format|
      if @evaluation.save
        format.html { redirect_to professor_course_url(@professor,@evaluation.course), notice: 'Evaluation was successfully created.' }
        format.json { render json: @evaluation, status: :created, location: @evaluation }
      else
    	@course = Course.find(@evaluation.course_id)
        format.html { render action: "new" }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /evaluations/1
  # PUT /evaluations/1.json
  def update
    @evaluation = Evaluation.find(params[:id])
    @userid = current_instructor.try(:id)
    @userid = -1 if @userid.nil?
    @professor = @evaluation.course.professor
    unless (admin_signed_in? or @userid == @professor.instructor_id)
      redirect_to :back, alert: 'Cannot edit evaluation for this course.'
    end

    respond_to do |format|
      if @evaluation.update_attributes(params[:evaluation])
        format.html { redirect_to @evaluation, notice: 'Evaluation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @evaluation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /evaluations/1
  # DELETE /evaluations/1.json
  def destroy
    @evaluation = Evaluation.find(params[:id])
    @userid = current_instructor.try(:id)
    @userid = -1 if @userid.nil?
    @professor = @evaluation.course.professor
    unless (admin_signed_in? or @userid == @professor.instructor_id)
      redirect_to :back, alert: 'Cannot delete evaluation for this course.'
    end
    @evaluation.destroy

    respond_to do |format|
      format.html { redirect_to evaluations_url }
      format.json { head :no_content }
    end
  end

  private

  def creator
    unless admin_signed_in? or instructor_signed_in?
      redirect_to :back, alert: 'You need to sign in or sign up before continuing.'
    end
  end

  def editor
    unless admin_signed_in? or instructor_signed_in?
      redirect_to :back, alert: 'You need to sign in or sign up before continuing.'
    end
  end

  def viewer
    unless admin_signed_in? or instructor_signed_in?
      redirect_to :back, alert: 'You need to sign in or sign up before continuing.'
    end
  end
end
