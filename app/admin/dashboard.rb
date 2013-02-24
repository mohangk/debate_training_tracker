ActiveAdmin.register_page "Dashboard" do

  menu :priority => 1, :label => proc{ I18n.t("active_admin.dashboard") }

  content :title => proc{ I18n.t("active_admin.dashboard") } do
    div :class => "blank_slate_container", :id => "dashboard_default_message" do
      span :class => "blank_slate" do
        span I18n.t("active_admin.dashboard_welcome.welcome")
        small I18n.t("active_admin.dashboard_welcome.call_to_action")
      end
    end

    columns do
      column do
        panel 'Activty & debate feedback overview' do
          table do
            tr do
              th 'Name'
              th '# Activities'
              th '# Activity feedback'
              th '# Debates'
              th '# Debate feedback'
            end
            AdminUser.order(:name).map do |admin_user|
              tr do
                td admin_user.name
                td admin_user.activities.count
                td admin_user.activity_trainings.count
                td admin_user.debates.count
                td admin_user.debate_trainings.count
              end
            end
          end
        end
      end
    end

    columns do
      column do
        panel 'Latest activities in the system' do
          table do
            Activity.order('created_at desc').limit(5).map do |activity|
              tr do
                td activity.admin_user.name
                td link_to(activity.topic, admin_activity_path(activity))
                td activity.created_at
                td activity.activity_trainings.count
              end
            end
          end
        end

      end

      column do
        panel 'Latest debates in the system' do
          table do
            Debate.order('created_at desc').limit(5).map do |debate|
              tr do
                td debate.admin_user.name
                td link_to(debate.topic, admin_debate_path(debate))
                td debate.created_at
              end
            end
          end
        end
      end
    end
  end # content
end
