class TareasController < ApplicationController
  before_action :set_tarea, except: [:index, :new, :create]
  before_action :authenticate_usuario!, except: [:index, :show]
  def index
  	 @tareas = Tarea.all
  	 #select*from tareas
  end


   def new
    @tarea = Tarea.new
   end

   def create
	  @tarea = Tarea.new(tareas_params) #(titulo: params[:tarea][:titulo], descripcion: params[:tarea][:descripcion])
	  @tarea.usuario = current_usuario 	
	  if @tarea.save
	  #insert into tareas(titulo,descripcion) values(xxx,xxx)
       redirect_to @tarea #controller: 'tareas', action: 'show', id: @tarea.id #redirije a la pagina con su id
       else
       	 render :new
	  end
   end

   def show      
      #select*from tareas where id=
   end

   def destroy      
      @tarea.destroy
      redirect_to tareas_path#controller: 'tareas', action: 'index'
      #delete*from tareas where id=
   end

   def edit    	
   end

   def update
     if @tarea.update(tareas_params)
      redirect_to @tarea 
    else
      render :show
    end
   end

  private
   def set_tarea
    @tarea = Tarea.find(params[:id])     
   end

   def tareas_params
    params.require(:tarea).permit(:titulo, :descripcion)
     
   end
   

end