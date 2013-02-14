ActiveAdmin.register User do
  form do |f|
    f.inputs "User details" do
      f.input :name
      f.input :institution
      f.input :email
    end
    f.actions
  end
end
