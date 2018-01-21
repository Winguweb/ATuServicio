class PiaController < ApplicationController
  layout 'atuservicio'

  before_action :set_pium, only: [:show, :edit, :update, :destroy]

  # GET /pia
  def index
    @title = 'Catálogo Prestaciones'
    if params[:search]
      search = params[:search];
      @pia = Pia.search_by_title_pid("#{search}").arrange(:order => :pid)
    else
      @pia = Pia.all.arrange(:order => :pid)
    end

    @categories= Pia.all.where(ancestry: nil)
    puts @categories
  end

end