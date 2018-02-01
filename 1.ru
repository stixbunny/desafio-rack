require 'rack'
class MiPrimeraWebApp
  def call(env)
    [200, {'Content-Type' => 'text/html'}, ['<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec laoreet arcu id dictum luctus. Nulla semper, dui quis laoreet sodales, odio orci tempus purus, quis ultricies felis nunc nec ante. Vivamus sagittis tristique turpis, vitae facilisis augue ultricies ut.</p>']]
  end
end
run MiPrimeraWebApp.new
