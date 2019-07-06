class Api::V1::NotesController < ApplicationController
  before_action :find_note, only: [:show, :update]
  before_action :find_notes, only: [:index]

  def index
    render json: @notes, status: 200
  end

  def create
  end

  def update
  end

  def destroy
  end

  def show
    render json: @note, status: 200
  end

  private

  def note_params
    params.permit(:id, :content, :title, :time, :season, :lat, :lng, :user_id)
  end

  def find_note
    @note = Note.find(params[:id])
  end

  def find_notes
    @notes = Note.all
  end

end
