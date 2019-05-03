# conohaのサーバーのIP、ログインするユーザー名、サーバーの役割
# xxxの部分はサーバーのIPアドレス
# 10022はポートを変更している場合。通常は22
server '118.27.35.203', user: 'hoge', roles: %w{app db web}, port: 10022 

#デプロイするサーバーにsshログインする鍵の情報。サーバー編で作成した鍵のパス
set :ssh_options, {
	port: 10022,
	forward_agent: true,
	keys: [File.expand_path('~/.ssh/id_rsa')],
	auth_methods: %w(publickey)
}
