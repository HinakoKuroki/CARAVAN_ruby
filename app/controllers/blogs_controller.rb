class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def new #投稿フォームを表示
    @blog = Blog.new #blogインスタンスをBlogモデルから作成
  end

  def create #newアクションで表示されたフォームでの投稿内容を保存
  end

  def edit
  end
end
