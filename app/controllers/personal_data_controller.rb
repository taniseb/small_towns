class PersonalDataController < ApplicationController

  def index
     @personal_data = Personal_datum.all
  end

end
