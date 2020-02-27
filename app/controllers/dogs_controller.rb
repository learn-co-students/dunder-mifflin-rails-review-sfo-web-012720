class DogsController < ApplicationController
    before_action :set_dog, only: :show

    def index
        @dogs = Dog.all.sort_by { |dog| -dog.employees.count }
    end

    def show
    end

    private

    def set_dog
        @dog = Dog.find(params[:id])
    end

end
