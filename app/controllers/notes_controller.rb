class NotesController < ApplicationController

  def index 
    @users = Note.all
  end

  def new
    @note = Note.new
  end

end
