class Api::V1::TasksController < ApplicationController
    before_action :set_tasks, only: [:show, :edit, :update, :destroy]
    def index
        @tasks = Task.all
    end
    def show
        
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
end
