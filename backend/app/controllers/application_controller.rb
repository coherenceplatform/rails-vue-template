class ApplicationController < ActionController::API
    def index
        cats = Cat.all
        names = cats.map{ |cat| cat.name }
        render :json => {:names => names}  
    end
end
