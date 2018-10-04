class TareasController < ApplicationController
  def index
  	 @tareas = Tarea.all
  	 #select*from tareas
  end


   def new
    @tarea = Tarea.new
   end

   def create
	  @tarea = Tarea.new(titulo: params[:tarea][:titulo], descripcion: params[:tarea][:descripcion])
	   	
	  if @tarea.save
	  #insert into tareas(titulo,descripcion) values(xxx,xxx)
       redirect_to controller: 'tareas', action: 'show', id: @tarea.id #redirije a la pagina con su id
       else
       	 render :new
	  end
   end

   def show
      @tarea = Tarea.find(params[:id])
      #select*from tareas where id=
   end

   def destroy
      @tarea = Tarea.find(params[:id])
      @tarea.destroy
      redirect_to controller: 'tareas', action: 'index'
      #delete*from tareas where id=
   end

   def edit
   	@tarea = Tarea.find(params[:id])
   	
   end

end