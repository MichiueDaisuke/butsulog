class PostsController < ApplicationController
  def index
    @posts = [
        "中野区中野1-1-1 グランドハウス",
        "千代田区千代田１−１　天皇家"
    ]
  end
end
