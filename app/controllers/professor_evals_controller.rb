class ProfessorEvalsController < ApplicationController
  # GET /professor_evals
  # GET /professor_evals.json
  def index
    @professor_evals = ProfessorEval.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @professor_evals }
    end
  end

  # GET /professor_evals/1
  # GET /professor_evals/1.json
  def show
    @professor_eval = ProfessorEval.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @professor_eval }
    end
  end

  # GET /professor_evals/new
  # GET /professor_evals/new.json
  def new
    @professor_eval = ProfessorEval.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @professor_eval }
    end
  end

  # GET /professor_evals/1/edit
  def edit
    @professor_eval = ProfessorEval.find(params[:id])
  end

  # POST /professor_evals
  # POST /professor_evals.json
  def create
    @professor = Professor.find(params[:professor_id])
    @professor_eval = ProfessorEval.new(params[:professor_eval])
    @professor_eval.professor = @professor

    respond_to do |format|
      if @professor_eval.save
        format.html { redirect_to @professor_eval, notice: 'Professor eval was successfully created.' }
        format.json { render json: @professor_eval, status: :created, location: @professor_eval }
      else
        format.html { render action: "new" }
        format.json { render json: @professor_eval.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /professor_evals/1
  # PUT /professor_evals/1.json
  def update
    @professor_eval = ProfessorEval.find(params[:id])

    respond_to do |format|
      if @professor_eval.update_attributes(params[:professor_eval])
        format.html { redirect_to @professor_eval, notice: 'Professor eval was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @professor_eval.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /professor_evals/1
  # DELETE /professor_evals/1.json
  def destroy
    @professor_eval = ProfessorEval.find(params[:id])
    @professor_eval.destroy

    respond_to do |format|
      format.html { redirect_to professor_evals_url }
      format.json { head :no_content }
    end
  end
end
