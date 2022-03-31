class AcceuilController < ApplicationController
  def index
    @blagues = Blague.all
  end
end
