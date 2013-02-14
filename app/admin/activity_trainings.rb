ActiveAdmin.register ActivityTraining do
  index do
    column :scheduled_at
    column :adjudicator_feedback
    column :my_feedback
    column :activity
    default_actions
  end

  form do |f|
    f.inputs "Activity training" do
      f.input :activity
      f.input :adjudicator_feedback
      f.input :my_feedback
    end
    f.actions
  end
end
