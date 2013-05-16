# coding: utf-8
class Category < ActiveRecord::Base
  before_validation :build_attributes

  attr_accessible :title, :slug

  validates :title, :slug, :presence => true

  has_many  :posts

  protected

  def build_attributes
    self.slug ||= self.title.to_slug
  end
end