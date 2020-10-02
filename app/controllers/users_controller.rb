class UsersController < ApplicationController

    def show
    end
    def home
      @requisitions_pendente = Requisition.where(status:"pendente")
    end
end
