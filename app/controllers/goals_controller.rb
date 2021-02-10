class GoalsController < ApplicationController
  before_action :set_goal, only: [:show, :edit, :update, :destroy, :update_counter] #add methods you need to use the set_goal for

  # GET /goals
  def index
    @goals = Goal.all
  end

  # GET /goals/1
  def show
  end

  # GET /goals/new
  def new
    @goal = Goal.new
    @users = User.all
  end

  # GET /goals/1/edit
  def edit
  end

  # POST /goals
  def create
    @goal = Goal.new(goal_params)
    @goal.user = current_user

    if @goal.save
      redirect_to @goal, notice: 'Goal was successfully created.'
    else
      render :new
    end
  end



def update
  @goal.update(goal_params)
  # if @goal.save
    redirect_to @goal, notice: 'goal was successfully updated.'
#  else
#     render :edit
  
end



  # DELETE /goals/1
  def destroy
    @goal.destroy
    redirect_to goals_url, notice: 'Goal was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goal
      @goal = Goal.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def goal_params
      params.require(:goal).permit(:user_id, :title, :description, :counter, :target, :completed)
    end
end
