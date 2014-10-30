require 'sinatra'

get '/' do
  buf = rand(2..100).times.map do
    %w{o O 0 º ｏ Ｏ ０𝕠 𝕆 𝟘}.shuffle.first
  end.join
  "t#{buf}t"
end

run Sinatra::Application

