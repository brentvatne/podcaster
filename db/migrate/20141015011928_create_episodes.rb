class CreateEpisodes < ActiveRecord::Migration
  def change
    create_table :episodes do |t|
      t.integer :podcast_id
      t.text :title
      t.text :subtitle
      t.text :summary
      t.text :image_url
      t.text :file_url
      t.text :file_size
      t.text :file_duration
      t.datetime :publication_date
    end
  end
end
