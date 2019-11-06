class NotesController < ApplicationController
  def index
    if params[:share].blank?
      @notes = @current_user.notes.all.order('updated_at DESC')
    else
      @share_id = Share.find_by(code: params[:share]).id
      @notes = Note.where(share_id: @share_id).order('updated_at DESC')
    end
  end

  def filter
    # @note_share = Note.where(share_id: 60, user_id: 53)
    @note_share = Note.where params[:sid]
  end

  def show
    @note = Note.find params[:id]

    if params[:query].present?
      share = params[:query].upcase
      @share = Share.get_share share
      @note << @share
    end
  end

  def new
    @note = Note.new
  end

  def create
    note = Note.new note_params
    @current_user.notes << note
    # if @note.save
      redirect_to notes_path
    # else
    # @current_user.notes << @note
    # raise "hell"
      # redirect_to root_path
    # end

  end

  def edit
    @note = Note.find params[:id]
  end

  def update
    note = Note.find params[:id]


    if note.update note_params
      redirect_to note_path(note.id)
    else
      render :edit
    end
  end

  def destroy
    note = Note.find params[:id]
    note.destroy
    redirect_to notes_path
  end

  private
  def note_params
    params.require(:note).permit(:title, :post, :user_id, :share_id)
  end

end
