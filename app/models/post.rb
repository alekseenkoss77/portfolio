# coding: utf-8
class Post < ActiveRecord::Base
  before_validation :build_attributes
  before_save :build_permalink

  attr_accessible :title, :description, :body, :slug, :category_id, :date, :avatar

  validates :title, :description, :body, :slug, :category_id, :presence => true

  has_many :comments
  belongs_to :category

  has_attached_file :avatar, :styles => {
    :small => "200x150#"
  }

  protected

  def build_attributes
    self.slug ||= self.title.to_slug
    self.date = DateTime.now
  end

  def build_permalink
    self.permalink = [self.category.slug,self.slug].join("/")
  end
end