class PodcastSerializer < ActiveModel::Serializer
  attributes :title, :link, :language, :copyright, :subtitle, :author, :summary, :description, :owner_name, :owner_email, :logo_url, :category
end
