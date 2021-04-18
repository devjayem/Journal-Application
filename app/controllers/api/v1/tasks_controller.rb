class Api::V1::TasksController < ApplicationController
    before_action :authenticate_user!
    before_action :set_task, only: [:show, :edit, :update, :destroy]
    def index
        @tasks = current_user.tasks.all
    end
    def show
        if authorized?
            respond_to do |format|
                format.json { render :show }
            end
        else
                handle_unauthorized
        end
    end
    def create
        
    end
    def update
        
    end
    def destroy
        
    end
    private
        def set_task
            @task = Task.find(params[:id])
        end

        def authorized?
            @task.user == current_user
        end

        def handle_unauthorized
            unless authorized?
               respond_to do |format|
                format.json{ render :unauthorized, status: 401 }
               end
            end
        end
end
