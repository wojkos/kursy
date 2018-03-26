class TestController < ApplicationController

	layout false

  def index
  	#to jest odwolanie do pliku index.html.erb
  	@testowa = "Witam w kursie RoR"
    @imiona = ["ala", "ewa", "ola"]
    @id = params[:id].to_i
  end

  def test
  	render('witaj')
  end

  def kurs
  	redirect_to('http://www.strefakursow.pl')
  end

end
