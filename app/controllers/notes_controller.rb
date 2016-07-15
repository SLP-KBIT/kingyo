class NotesController < ApplicationController

  def index 
    @notes = Note.all
  end

  def new
    @note = Note.new
  end

  def create
    note = Note.new
    note.title   = params['note']['title']
    note.content = params['note']['content']
    # 作成者IDを仮に1とする(あとで作成)
    note.author_id = 1
    note.save
    redirect_to notes_path
  end

end
