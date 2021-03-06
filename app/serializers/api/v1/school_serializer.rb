class Api::V1::SchoolSerializer < ActiveModel::Serializer
  attributes :id, :name, :location

  def location
    {
      state: object.uf,
      city: object.city
    }
  end
end