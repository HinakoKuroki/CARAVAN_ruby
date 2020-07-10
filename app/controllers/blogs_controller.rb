class BlogsController < ApplicationController
  def index
  end

  def show
  end

  def new #投稿フォームを表示
    @blog = Blog.new #blogインスタンスをBlogモデルから作成
  end

  def create #newアクションで表示されたフォームでの投稿内容を保存
    blog = Blog.new(blog_params)
    blog.save
    redirect_to blogs_path
  end

  def edit
  end

  private
  def blog_params
    params.require(:blog).permit(:title, :category, :body)
  end
end
