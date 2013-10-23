use Rack::Static,
  :urls => ["/images", "/js", "/css", "/deck.js"],
  :root => "."

run lambda { |env|
  [
    200,
    {
      'Content-Type'  => 'text/html',
      'Cache-Control' => 'public, max-age=86400'
    },
    File.open('slides.html', File::RDONLY)
  ]
}
