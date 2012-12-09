class ResponseSetsController < ApplicationController
  # GET /response_sets
  # GET /response_sets.json
  before_filter :creator, :only => [:new, :create, :destroy]
  before_filter :editor, :only => [:edit, :update]
  before_filter :viewer, :only => [:index, :show]

  def index
    @response_sets = ResponseSet.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @response_sets }
    end
  end

  # GET /response_sets/1
  # GET /response_sets/1.json
  def show
    @response_set = ResponseSet.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @response_set }
    end
  end

  # GET /response_sets/new
  # GET /response_sets/new.json
  def new
    @response_set = ResponseSet.new
    @evaluation = Evaluation.find(params[:evaluation_id])
    @questions = @evaluation.questions
    @questions.each do |question|
      @response_set.responses.push Response.new
    end

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @response_set }
    end
  end

  # GET /response_sets/1/edit
  def edit
    @response_set = ResponseSet.find(params[:id])
  end

  # POST /response_sets
  # POST /response_sets.json
  def create
    evaluation_id = params[:response_set][:evaluation_id]
    @response_set = ResponseSet.new(evaluation_id: evaluation_id)

    @response_params = params[:response_set].select do |key, val|
      /response[0-9]+/.match(key)
    end

    @response_params.each do |key, val|
      @response_set.responses.push Response.new(val)
    end

    respond_to do |format|
      if @response_set.save
        format.html { redirect_to @response_set, notice: 'ResponseSet was successfully created.' }
        format.json { render json: @response_set, status: :created, location: @response_set }
      else
        format.html { render action: "new" }
        format.json { render json: @response_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /response_sets/1
  # PUT /response_sets/1.json
  def update
    @response_set = ResponseSet.find(params[:id])

    respond_to do |format|
      if @response_set.update_attributes(params[:response_set])
        format.html { redirect_to @response_set, notice: 'ResponseSet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @response_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /response_sets/1
  # DELETE /response_sets/1.json
  def destroy
    @response_set = ResponseSet.find(params[:id])
    @response_set.destroy

    respond_to do |format|
      format.html { redirect_to response_sets_url }
      format.json { head :no_content }
    end
  end

  private

  def creator
    unless admin_signed_in? or instructor_signed_in? or user_signed_in?
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
