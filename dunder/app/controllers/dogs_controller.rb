class DogsController < ApplicationController

    before_action :find_dog, only: [:show, :edit, :update]

    def index
        @dogs = Dog.all 
    end

    def show

    end

    def new
        @dog = Dog.new
    end

    def create
        
    end    

    def edit

    end

    def update

    end

    def delete 

    end

    private 

    def dog_params
        params.require(:dog).permit(:name, :breed, :age)
    end

    def find_dog
        @dog = Dog.find(params[:id])
    end
end
