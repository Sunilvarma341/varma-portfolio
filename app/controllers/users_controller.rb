class UsersController < ApplicationController
    def index
      @users = User.order(:email)
      respond_to do |format|
        format.html # index.html.erb 
        format.json { render json: @users }
      end
    end
  
    # GET /users/1
    # GET /users/1.json
    def show
    end
              
    # GET /users/new
    def new
      @user = User.new
    end
  
    # GET /users/1/edit
    def edit
    end
  
    # POST /users
    # POST /users.json
    def create
      @user = User.new(user_params)
  
      respond_to do |format|
        if @user.save
          format.html { redirect_to users_url, notice: 'User #{@user.email} was successfully created.' }
          format.json { render :created, location: @user }
        else
          format.html { render :new }
          format.json { render json: @user.errors, status: :unprocessable_entity }
        end
      end


      def destroy
        # perform the look up
        @user = Portfolio.find(params[:id])
        
        # Destroy or delete the record
        @user.destroy
  
        #redirect
        respond_to do |format|
          format.html { redirect_to users_url , notice: 'Record  was removed.'}
        end
      end 
    end
 