ActiveAdmin.register User do
  index do
    column :id
    column :name
    column :lab
    column :email
    column :last_sign_in_at
  end
  form do |f|
    f.inputs "User details" do
      f.input :name
      f.input :institution
      f.input :email
      f.input :lab
    end
    f.actions
  end

  filter :lab
  filter :email
  filter :name
  filter :institution

end
