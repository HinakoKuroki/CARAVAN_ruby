class BlogsController < ApplicationController
  def index
    @blogs = Blog.all #記事を全件取得
  end

  def show
    @blog = Blog.find(params[:id])
    # パラメータ名idでfind
  end

  def new #投稿フォームを表示
    @blog = Blog.new #blogインスタンスをBlogモデルから作成
  end

  def create #newアクションで表示されたフォームでの投稿内容を保存
    blog = Blog.new(blog_params) #上の＠blogとは別の変数
    blog.save
    redirect_to blog_path(blog.id) #'/blog/(id)'に遷移
  end

  def edit #編集画面を表示
    @blog = Blog.find(params[:id])
  end

  def update #editアクションで編集したblogを保存
    blog = Blog.find(params[:id])
    blog.update(blog_params)
    redirect_to blog_path(blog)
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end
end
