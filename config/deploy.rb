# capistranoのバージョン固定
lock "~> 3.11.0"

# デプロイするアプリケーション名
set :application, 'hoge_app'

# cloneするgitのレポジトリ
# 1-3で設定したリモートリポジトリのurl
set :repo_url, 'git@github.com:MichiueDaisuke/butsulog.git'

# deployするブランチ。デフォルトはmasterなのでなくても可。
set :branch, 'master'

# deploy先のディレクトリ。
set :deploy_to, '/var/www/hoge_app'

# シンボリックリンクをはるファイル
set :linked_files, fetch(:linked_files, []).push('config/secrets.yml')

# シンボリックリンクをはるフォルダ
set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'vendor/bundle', 'public/system')

# 保持するバージョンの個数(※後述)
set :keep_releases, 5

# rubyのバージョン
# rbenvで設定したサーバー側のrubyのバージョン
set :rbenv_ruby, '2.5.0'

# 出力するログのレベル。
set :log_level, :debug

# デプロイ前に実行する必要がある。
desc 'execute before deploy'
task :db_create do
  on roles(:db) do |host|
    execute "mysql --user=michiue --password=Daisu514@ -e 'CREATE DATABASE IF NOT EXISTS hoge_app_production;'"
  end
end
