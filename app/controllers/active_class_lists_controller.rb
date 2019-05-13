class ActiveClassListsController < ApplicationController
  before_action :set_active_class_list, only: [:show, :edit, :update, :destroy]

  # GET /active_class_lists
  # GET /active_class_lists.json
  def index
    @active_class_lists = ActiveClassList.all
  end

  # GET /active_class_lists/1
  # GET /active_class_lists/1.json
  def show
  end

  # GET /active_class_lists/new
  def new
    @active_class_list = ActiveClassList.new
  end

  # GET /active_class_lists/1/edit
  def edit
  end

  # POST /active_class_lists
  # POST /active_class_lists.json

   def act_create
    active_class = ActiveClass.find(params[:active_class_id])
    if active_class.check_full?
      redirect_to student_path(params[:student_id]), notice: '수강인원을 초과하여 강의신청이 안되었습니다.'
    else
      @act_class = ActiveClassList.new
      @act_class.student_id= params[:student_id]
      @act_class.active_class_id= params[:active_class_id]
      @act_class.save
      redirect_to student_path(params[:student_id]), notice: '강의신청이 완료되었습니다.'
    end
  end

  def create
    @active_class_list = ActiveClassList.new(active_class_list_params)

    respond_to do |format|
      if @active_class_list.save
        format.html { redirect_to @active_class_list, notice: 'Active class list was successfully created.' }
        format.json { render :show, status: :created, location: @active_class_list }
      else
        format.html { render :new }
        format.json { render json: @active_class_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /active_class_lists/1
  # PATCH/PUT /active_class_lists/1.json
  def update
    respond_to do |format|
      if @active_class_list.update(active_class_list_params)
        format.html { redirect_to @active_class_list, notice: 'Active class list was successfully updated.' }
        format.json { render :show, status: :ok, location: @active_class_list }
      else
        format.html { render :edit }
        format.json { render json: @active_class_list.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /active_class_lists/1
  # DELETE /active_class_lists/1.json
  def destroy
    @active_class_list = ActiveClassList.find(params[:id])
    @active_class_list.destroy
    redirect_to active_class_path(@active_class_lidt.active_class_id)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_active_class_list
      @active_class_list = ActiveClassList.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def active_class_list_params
      params.require(:active_class_list).permit(:student_id, :active_class_id)
    end
end
