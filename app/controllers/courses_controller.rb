class CoursesController < ApplicationController
    # GET /courses
    # GET /courses.json
    # before_filter :creator, :only => [:new, :create, :destroy]
    # before_filter :editor, :only => [:edit, :update]
    def index
        @courses = Course.all

        respond_to do |format|
            format.html # index.html.erb
            format.json { render json: @courses }
        end
    end

    # GET /courses/1
    # GET /courses/1.json
    def show
        @course = Course.find(params[:id])

        respond_to do |format|
            format.html # show.html.erb
            format.json { render json: @course }
        end
    end

    # GET /courses/new
    # GET /courses/new.json
    def new
        @course = Course.new

        respond_to do |format|
            format.html # new.html.erb
            format.json { render json: @course }
        end
    end

    # GET /courses/1/edit
    def edit
        @course = Course.find(params[:id])
    end

    # POST /courses
    # POST /courses.json
    def create
        @professor = Professor.find(params[:professor_id])
        @department = Department.find(@professor.department)
        @course = Course.new(params[:course])
        @course.department = @department
        @course.professor = @professor

        respond_to do |format|
            if @course.save
                format.html { redirect_to department_course_url(@department,@course), notice: 'Course was successfully created.' }
                format.json { render json: @course, status: :created, location: @course }
            else
                format.html { render action: "new" }
                format.json { render json: @course.errors, status: :unprocessable_entity }
            end
        end
    end

    # PUT /courses/1
    # PUT /courses/1.json
    def update
        @course = Course.find(params[:id])

        respond_to do |format|
            if @course.update_attributes(params[:course])
                format.html { redirect_to @course, notice: 'Course was successfully updated.' }
                format.json { head :no_content }
            else
                format.html { render action: "edit" }
                format.json { render json: @course.errors, status: :unprocessable_entity }
            end
        end
    end

    # DELETE /courses/1
    # DELETE /courses/1.json
    def destroy
        @course = Course.find(params[:id])
        @course.destroy

        respond_to do |format|
            format.html { redirect_to courses_url }
            format.json { head :no_content }
        end
    end

    private

    def creator
      unless admin_signed_in? or instructor_signed_in?
        redirect_to login_url, alert: 'You need to sign in or sign up before continuing.'
      end
    end

    def editor
      unless admin_signed_in? or instructor_signed_in?
        redirect_to login_url, alert: 'You need to sign in or sign up before continuing.'
      end
    end
end
