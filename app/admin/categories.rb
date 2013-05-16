# coding: utf-8
ActiveAdmin.register Category do
  menu label: "Категории"

  index do 
    #selectable_column
    column  :title
    column  :slug
    default_actions
  end

  form do |f|
    f.inputs do
      f.input :title
      f.input :slug
    end
    f.buttons
  end
end
