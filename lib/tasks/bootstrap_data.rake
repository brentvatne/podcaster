task bootstrap_data: [:environment] do
  if Podcast.count > 0
    puts "Already bootstraped!"
  else
    Podcast.create(
      title: "Swan Song Radio",
      link: "http://swansongradio.com",
      copyright: "Dave Swanson",
      subtitle: "Contemporary social conversations with people, academics and activists.",
      author: "Dave Swanson",
      summary: "The Swan Song is all about contemporary social conversations with people, academics and activists. Tune in and join the flock.",
      owner_name: 'Brent Vatne',
      owner_email: 'brentvatne@gmail.com',
      logo_url: 'http://swansong.brentvatne.ca/logo.jpg',
      category: "Society &amp; Culture"
    )
  end
end
