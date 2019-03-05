# (с) goodprogrammer.ru

source 'https://rubygems.org'

gem 'rails', '~> 4.2.8'

# Гем для вывода подробных логов на Heroku (с версии рельс 5.0.0 — не нужен)
gem 'rails_12factor'

# Этот гем нужен для сборки js-скриптов на heroku
gem 'uglifier'

gem 'jquery-rails'

# В продакшн (на хероку) мы используем базу данных postrgres, поэтому нам нужен
# гем pg, чтобы не пришлось устанавливать postgres локально, набирайте при
# установке гемов:
#
# bundle install --without production
#
group :production do
  gem 'pg', '~> 0.21'
end

group :development, :test do
  gem 'byebug'
end

group :development do
  gem 'sqlite3'
  gem 'web-console', '~> 2.0'
end
