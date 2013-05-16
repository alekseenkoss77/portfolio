# coding: utf-8
class PostsController < ApplicationController

  add_breadcrumb "Главная", :root

  def index
    if params[:category_id]
      @posts = Post.find_all_by_category_id(params[:category_id])
      add_breadcrumb "Все статьи", blog_path
      add_breadcrumb @posts.first.category.title, blog_path(params[:category_id])
    else 
      @posts = Post.all
      add_breadcrumb "Блог", blog_path
    end
  end

  def show
    @post = Post.find_by_slug(params[:slug])
    add_breadcrumb @post.category.title, blog_path(@post.category)
    add_breadcrumb @post.title
  end
end
