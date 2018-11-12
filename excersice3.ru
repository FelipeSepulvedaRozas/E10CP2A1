# config.ru
require 'rack'
class MiPrimeraWebApp
  def call(env)
    @url = env['REQUEST_PATH']
    if @url == '/'
      [202, { 'Content-Type' => 'text/html' }, ['<h1> INDEX </h1>']]
    end
  if @url == '/index'
      [200, { 'Content-Type' => 'text/html' }, ['<h1> Estas en el index! </h1>']]
    end
  if @url == '/otro'
      [200, { 'Content-Type' => 'text/html' }, ['<h1> Estas en otro landing! </h1>']]
    end
  else
      [404, { 'Content-Type' => 'text/html' }, [File.read("404.html")]]
    end
  end
run MiPrimeraWebApp.new
