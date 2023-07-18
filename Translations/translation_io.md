Different methods of using I18n that's I have used.
```ruby
I18n.t('controllers.student_binders.updated')

I18n.t("enum.text.conversation_filter_option.#{self.to_s}")

I18n.t('simple_form.labels.admission_tuition_agreement_step_vocational_form.name_with_total', name: f.object.to_s)

"#{I18n.t('form.buttons.save_and_send')} #{' ' + I18n.t('form.buttons.request') unless is_mobile?}"

I18n.t("nav_items.student_menu_items.#{self.section_name}.#{self.to_s}")

I18n.t("nav_items.student_menu_items.#{self.to_s}", school_period: Tenant.get(:school_period_term))

I18n.t('presenters.notification.others', action_count: "#{@model.params[:action_count] - 1}")

I18n.t('presenters.notification.about_mins_ago', other_notifications: other_notifications, time: time_ago_in_words(@model.created_at))

I18n.t("presenters.notification.#{@model.params[:action].to_s}").titleize

super.to_s.html_safe + "<span>#{I18n.t("simple_form.hints.defaults.#{input_type}")}</span>".html_safe

I18n.t('email.payments_mailer.text.auto_payment_note', account_register: @account_register.to_s, time: Time.zone.now.to_fs(:default))
```
