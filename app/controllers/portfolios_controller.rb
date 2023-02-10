class PortfoliosController < ApplicationController
    before_action :set_portfolio_item, only: [:edit, :update, :show, :destroy]
    layout ('portfolio')
    access all: [:show, :index], user: {except: [:destroy, :new, :create, :update, :edit]}, site_admin: :all

    def index
        @portfolio_items = Portfolio.all
    end
    

    def angular 
      @angular_portfolio_items = Portfolio.angular
    end  


    def new 
        @portfolio_item = Portfolio.new
        3.times { @portfolio_item.technologies.build }
    end 

    def create
        @portfolio_item = Portfolio.new(params.require(:portfolio).permit(:title, :subtitle, :body, technologies_attributes: [:name]))
    
        respond_to do |format|
          if @portfolio_item.save
            format.html { redirect_to @portfolio_item, notice: "Portfolio was successfully created." }
          else
            format.html { render :new}
          end
        end
      end 

     def edit 
      @portfolio_item = Portfolio.find(params[:id])
      
     end 

     def update
      @portfolio_item = Portfolio.find(params[:id])
      
      respond_to do |format|
        # if @portfolio_item.update(params.require(:portfolio).permit(:title, :subtitle, :body))
        if @portfolio_item.update(portfolio_params)
          format.html { redirect_to portfolios_path, notice: "The Record successfully updated." }
        else
          format.html { render :edit }
        end
      end
    end

    def show 
      @portfolio_item = Portfolio.find(params[:id])
    end  
    
    def destroy
      # perform the look up
      @portfolio_item = Portfolio.find(params[:id])
      
      # Destroy or delete the record
      @portfolio_item.destroy

      #redirect
      respond_to do |format|
        format.html { redirect_to portfolios_url , notice: 'Record  was removed.'}
        format.json { head :no_content }
      end
    end    
    
  private 

    def portfolio_params 
      params.require(:portfolio).permit(:title, :subtitle, :body, :image , 
      technologies_attributes: [:name])
    end  

    def set_portfolio_item 
      @portfolio_item = Portfolio.find(params[:id])
    end      
end
       

