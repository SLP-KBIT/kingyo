class NotesController < ApplicationController

  def index 
    @users = Note.all
  end

  def new
    @note = Note.new
  end

  def create
    note = Note.new
    note.title   = params['note']['title']
    note.content = params['note']['content']
    note.save
    redirect_to notes_path
  end

end
