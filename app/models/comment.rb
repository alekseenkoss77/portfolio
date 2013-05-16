# coding: utf-8
class Comment < ActiveRecord::Base
  attr_accessible :name, :email, :body

  validates :name, :email, :presence => true

  belongs_to :post
end