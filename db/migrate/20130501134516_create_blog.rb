class CreateBlog < ActiveRecord::Migration
  def up
    create_table :categories do |t|
      t.string  :title
      t.string  :slug
      t.text    :body
    end

    create_table :posts do |t|
      t.string    :title
      t.text      :description
      t.text      :body
      t.string    :slug
      t.string    :permalink
      t.datetime  :date
      t.integer   :category_id
    end

    create_table :comments do |t|
      t.string    :name
      t.string    :email
      t.text      :body
      t.timestamps
    end

    add_attachment :posts, :avatar
  end

  def down
    drop_table :categories
    drop_table :posts
    drop_table :comments
  end
end
