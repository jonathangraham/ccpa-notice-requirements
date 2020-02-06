class NoticeRequirementsController < ApplicationController
  before_action :set_notice_requirement, only: [:show, :edit, :update, :destroy]

  # GET /notice_requirements
  # GET /notice_requirements.json
  def index
    topics = NoticeRequirement.all.pluck(:topic).uniq
    color_classes = ["", "table-primary", "table-secondary", "table-success", "table-danger", "table-warning", "table-info", "table-light"]
    @row_klass = Hash[topics.zip(color_classes)]
    @notice_requirements = NoticeRequirement.all
  end

  # GET /notice_requirements/1
  # GET /notice_requirements/1.json
  def show
  end

  # GET /notice_requirements/new
  def new
    @notice_requirement = NoticeRequirement.new
  end

  # GET /notice_requirements/1/edit
  def edit
  end

  # POST /notice_requirements
  # POST /notice_requirements.json
  def create
    @notice_requirement = NoticeRequirement.new(notice_requirement_params)

    respond_to do |format|
      if @notice_requirement.save
        format.html { redirect_to @notice_requirement, notice: 'Notice requirement was successfully created.' }
        format.json { render :show, status: :created, location: @notice_requirement }
      else
        format.html { render :new }
        format.json { render json: @notice_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notice_requirements/1
  # PATCH/PUT /notice_requirements/1.json
  def update
    respond_to do |format|
      if @notice_requirement.update(notice_requirement_params)
        format.html { redirect_to @notice_requirement, notice: 'Notice requirement was successfully updated.' }
        format.json { render :show, status: :ok, location: @notice_requirement }
      else
        format.html { render :edit }
        format.json { render json: @notice_requirement.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notice_requirements/1
  # DELETE /notice_requirements/1.json
  def destroy
    @notice_requirement.destroy
    respond_to do |format|
      format.html { redirect_to notice_requirements_url, notice: 'Notice requirement was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_notice_requirement
      @notice_requirement = NoticeRequirement.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def notice_requirement_params
      params.fetch(:notice_requirement, {})
    end
end
