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

  def edit
    @note = Note.find(params[:id])
  end

  def update
    note = Note.find(params[:id])
    if note.update_attributes(user_params)
      redirect_to notes_path
    else
      render 'edit'
    end
  end

  def destroy 
    note = Note.find(params[:id])
    note.destroy
    redirect_to notes_path
  end

  def user_params
    params.require(:note).permit('title', 'content')
  end

end
