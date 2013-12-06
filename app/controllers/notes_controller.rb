class NotesController < ApplicationController

  def index
    @notes = Note.all

    respond_to do |format|
      format.html do
        render 'index'
      end

      format.json do
        render :json => [{"sport" => "football", "color" => "purple"}]
      end
    end
  end

  def show
    @note = Note.find_by(id: params[:id])
  end

  def new
  end

  def create
    @note = Note.new
    @note.content = params[:content]

    if @note.save
      redirect_to notes_url, notice: "Note created successfully."
    else
      render 'new'
    end
  end

  def edit
    @note = Note.find_by(id: params[:id])
  end

  def update
    @note = Note.find_by(id: params[:id])
    @note.content = params[:content]

    if @note.save
      redirect_to notes_url, notice: "Note updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @note = Note.find_by(id: params[:id])
    @note.destroy

    redirect_to notes_url, notice: "Note deleted."
  end
end
