class Api::V1::NotesController < ApplicationController
  before_action :find_note, only: [:show, :update]
  before_action :find_notes, only: [:index]

  def index
    render json: @notes, status: 200
  end

  def create
#    byebug

    @note = Note.new
    @note.title = note_params[:title]
    @note.content = note_params[:content]
    @note.time = note_params[:time]
    @note.season = note_params[:season]
    @note.user_id = note_params[:user_id]
    @note.lat = note_params[:lat]
    @note.lng = note_params[:lng]

#    @note.weather = create_weather(attributes = {})...

    if @note.save
      render json: @note, status: :accepted
    else
      render json: { errors: @note.errors.full_messages }, status: :unprocessible_entity
    end
  end

  def update
    @note.update(note_params)
    if @note.save
      render json: @note,
      status: :accepted
    else
      render json: { errors: @note.errors.full_messages },
      status: :unprocessible_entity
    end
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
