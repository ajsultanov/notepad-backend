class NoteSerializer < ActiveModel::Serializer
  attributes :id, :content, :title, :time, :season, :lat, :lng

  belongs_to :user
  has_one :weather
end
