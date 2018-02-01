require 'rack'
class MiSegundaWebApp
  def call(env)
    path = env['REQUEST_PATH']
    case path
    when '/index'
      return [200, {'Content-Type' => 'text/html'}, ['<h1>Estas en el Index!</h1>']]
    when '/otro'
      return [200, {'Content-Type' => 'text/html'}, ['<h1>Estas en otro landing!</h1>']]
    else
      return [404, {'Content-Type' => 'text/html'}, [File.read("404.html")]]
    end
  end
end
run MiSegundaWebApp.new
