class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :project_name, :project_languages, :project_description, :project_cover

  has_many :project_images
end
