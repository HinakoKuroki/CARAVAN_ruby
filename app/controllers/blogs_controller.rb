class BlogsController < ApplicationController
  def index
    @blogs = Blog.all #記事を全件取得
  end

  def show
  end

  def new #投稿フォームを表示
    @blog = Blog.new #blogインスタンスをBlogモデルから作成
  end

  def create #newアクションで表示されたフォームでの投稿内容を保存
    blog = Blog.new(blog_params) #上の＠blogとは別の変数
    blog.save
    redirect_to blogs_path #'/blogs'に遷移
  end

  def edit
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end
end
