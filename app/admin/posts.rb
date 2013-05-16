# coding: utf-8
ActiveAdmin.register Post do
  menu label: "Статьи"

  index do 
    selectable_column
    column :id 
    column :title
    column :description
    default_actions
  end

  form do |f|
    f.inputs "Пост" do
      f.input :title
      f.input :description, :size => "3x2"
      f.input :body, :as => :ckeditor, :input_html => { :ckeditor => {:toolbar => 'Full'} } 
    end
    f.inputs "Детали" do
      f.input :category_id, :as => :select, :collection => Category.all
      f.input :date
      f.input :avatar, :as => :file
    end
    f.buttons
  end

  show do
    # renders app/views/admin/posts/_some_partial.html.erb
    render "show"
  end
end
