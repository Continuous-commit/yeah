# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions
$以下省力
```
cd ~/Desktop → mkdir product-myrails && cd product-myrails → code Dockerfile(編集) → touch Gemfile Gemfile.lock
→ code Gemfile(編集) → code docker-compose.yml(編集) → docker-compose up --build → rails new . --force -d mysql --skip-bundle 
→ exit → docker-compose down(よしっrailsのセットアップは完了した次はデータベースのセットアップだ)
→ database.ymlに追記(configの中にある) → docker-compose.ymlにdatabaseの情報を追記 → docker-compose up --build
→ rails db:create → rails db:migrate → rails s -b 0.0.0.0
補足
rails db:createでエラーに遭遇すると思うので
https://qiita.com/tomo-IR/items/224d33f14561e759dd16
こちらの記事を参考にして解決する。
```
