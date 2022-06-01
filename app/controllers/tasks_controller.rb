class TasksController < ApplicationController
    before_action :require_user_logged_in!
    # Mengubah is_done
    def toggle
        @task = Task.find(params[:id])
        if @task.is_done == true
            @task.is_done = false
            @task.save
            redirect_to tasks_path, notice: "Edited status Success"
        else
            @task.is_done = true
            @task.save
            redirect_to tasks_path, notice: "Edited status Success"
        end
    
    end
    def search
      render plain: params.inspect
    end

    # Menampilkan semua data tasks user    
    def index
         #@tasks = Task.all
        id_user = session[:user_id]
        @today = Date.today
        
        @tasks = Task.where(created_by: id_user)
      
            if params[:priority].present?
                @tasks = @tasks.where(priority: params[:priority])
            end
            if params[:due_date].present?
                @tasks = @tasks.where(due_date: params[:due_date])
            end
            if params[:desc].present?
                #@wildcard_search = "%#{params[:desc]}%"
                wildcard_search = Task.sanitize_sql_like(params[:desc])
                #@tasks = @tasks.where("desc like :search OR name like :search",search: wildcard_search)
                #@tasks = @tasks.where(desc: params[:desc])
                #@tasks= @tasks.where("desc LIKE ?", "%" + params[:desc] + "%")
                @tasks = @tasks.where(name: wildcard_search)
                  
            end
    end

    # Membuat form tambah data 
    def new
        @task = Task.new 
    end

    # Mengirim data dari form tambah
    def create
     
        @task = Task.new(tasks_params )
        @task.is_done = false
        @task.created_by = session[:user_id]
        if @task.save
            redirect_to tasks_path, notice: "Created task successfully"
        else
            render :new
        end


    end

    # Menampilakn hal edit data
    def edit
        @task = Task.find(params[:id])
    end

    # Mengupdate data dari form edit
    def update
        @task = Task.find(params[:id])
        if @task.update(tasks_params)
            redirect_to tasks_path, notice: 'Task edited successfully'
        else
            render :edit   
        end
    end

    # Menghapus data
    def destroy
        @task = Task.find(params[:id])
        if @task.destroy
            redirect_to tasks_path, notice: 'Task deleted successfully'
        else
            render :index
        end
    end

    private
    def tasks_params
        params.require(:task).permit(:name, :due_date, :desc, :priority)
    end
    def search_params
        params.require(:task).permit(:name, :due_date, :desc, :priority)
    end

   



end