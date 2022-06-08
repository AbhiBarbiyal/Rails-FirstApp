class MoviesController < ApplicationController

    # movId = params[Movie][:id]

    skip_before_action :verify_authenticity_token
    def show
        if(params[:id])
            render json: Movie.find(params[:id])
        elsif(params[:s])
            search_element = Movie.where('title LIKE ?', "%#{params[:s]}%")
            render json: search_element
        else    
            render json: Movie.all()
        end    
    end
    
    def add
            obj = Movie.new(params.permit(:title, :year, :genre, :poster, :plot, :response, :rating))
            obj.save()
            render json: obj, status: :created
    end
    def edit
            element = Movie.find(params[:id])
            element.update(params.permit(:title, :year, :genre, :poster, :plot, :response, :rating))
            render json: element
    end 
    def delete
            del_element = Movie.find(params[:id])
            del_element.destroy()
            render json: del_element
        
    end
    # def search
    #     # search_element = Movie.find(:all, :conditions => ['title LIKE ?', "%#{params [:search]}%"])
    #     render json: params
    # end    

         
end
