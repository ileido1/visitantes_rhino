class RhinoController < ApplicationController
    def index
        @rhinos = Rhino.all
    end
    def new 
        @rhino = Rhino.new
    end 
end
