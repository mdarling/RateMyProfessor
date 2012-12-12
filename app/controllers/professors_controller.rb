class ProfessorsController < ApplicationController
  # GET /professors
  # GET /professors.json
  before_filter :creator, :only => [:new, :create, :destroy]
  before_filter :editor, :only => [:edit, :update]


  def index
  
    if(params[:department_id])
      @department = Department.find(params[:department_id])
      @professors = @department.professors.all
    else
      @professors=Professor.all
    end

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @professors }
    end
  end

  # GET /professors/1
  # GET /professors/1.json
  def show
    @userid = current_instructor.try(:id)
    @userid = -1 if @userid.nil?
    @professor = Professor.find(params[:id])
    @pageid = @professor.instructor_id
    @courses = @professor.courses.all
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @professor }
    end
  end

  # GET /professors/new
  # GET /professors/new.json
  def new
    @professor = Professor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @professor }
    end
  end

  # GET /professors/1/edit
  def edit
    @professor = Professor.find(params[:id])
  end

  # POST /professors
  # POST /professors.json
  def create
      @department = Department.find(params[:department_id])
      @professor = Professor.new(params[:professor])
      @professor.department = @department

    respond_to do |format|
      if @professor.save
        format.html { redirect_to department_professors_url(@department), notice: 'Professor was successfully created.' }
        format.json { render json: @professor, status: :created, location: @professor }
      else
        format.html { render @department.professors, action: "new" }
        format.json { render json: @professor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /professors/1
  # PUT /professors/1.json
  def update
    @professor = Professor.find(params[:id])
    @department = Department.find(params[:department_id])

    respond_to do |format|
      if @professor.update_attributes(params[:professor])
        format.html { redirect_to @department.professors, notice: 'Professor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @department.professors.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professors/1
  # DELETE /professors/1.json
  def destroy
    @professor = Professor.find(params[:id])
    @professor.destroy

    respond_to do |format|
      format.html { redirect_to professors_url }
      format.json { head :no_content }
    end
  end

  private

  def creator
    unless admin_signed_in?
      redirect_to login_url, alert: 'You need to sign in or sign up before continuing.'
    end
  end

  def editor
    unless admin_signed_in? or instructor_signed_in?
      redirect_to login_url, alert: 'You need to sign in or sign up before continuing.'
    end
  end
end
