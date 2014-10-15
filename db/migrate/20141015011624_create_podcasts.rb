class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.text :title
      t.text :link
      t.text :language
      t.text :copyright
      t.text :subtitle
      t.text :author
      t.text :summary
      t.text :description
      t.text :owner_name
      t.text :owner_email
      t.text :logo_url
      t.text :category
    end
  end
end
