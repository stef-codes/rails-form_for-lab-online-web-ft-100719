class SchoolClassController < ActionController::Base
    # Prevent CSRF attacks by raising an exception.
    # For APIs, you may want to use :null_session instead.
    def index
      @school_class = SchoolClass.all
    end
  
    def show
      @school_class = SchoolClass.find(params[:id])
    end
  
    def new
      @school_class = SchoolClass.new
    end
  
    def create
      @school_class = SchoolClass.new
      @school_class.title = params[:title]
      @school_class.room_number = params[:room_number]
      @school_class.save
      redirect_to school_class_path(@school_class)
    end
  
    # add edit and update methods here
    def edit
      @school_class = SchoolClass.find(params[:id])
    end
  
    def update
      @school_class = SchoolClass.find(params[:id])
      @school_class.update(title: params[:school_class][:title], room_number: params[:school_class][:room_number])
      redirect_to school_class_path(@school_class)
    end

  end