###
# Copyright (c) 2015, Upnext Technologies Sp. z o.o.
# All rights reserved.
#
# This source code is licensed under the BSD 3-Clause License found in the
# LICENSE.txt file in the root directory of this source tree.
###

require_relative '../lib/application_config'

AppConfig = ApplicationConfig.new do
  config_key :secret_key_base, default: ENV['SECRET_KEY_BASE']
  config_key :store_dir
  config_key :registerable, default: true
  config_key :user_management, default: false

  config_key :log_path
  config_key :log_level, default: 'debug'
  config_key :presence_timeout, default: 21600 # seconds

  config_key :token_expires_in, default: 7200 # seconds

  config_key :coupon_url, default: ''

  config_key :smtp_settings, default: {
    address:              'smtp.sendgrid.net',
    port:                 587,
    domain:               'heroku.com',
    user_name:            ENV['SENDGRID_USERNAME'],
    password:             ENV['SENDGRID_PASSWORD'],
    authentication:       'plain',
    enable_starttls_auto: true
  }
  config_key :mailer_sender, default: 'noreply@beacon-os.com'
  config_key :registration_mailer_sender, default: 'noreply@beacon-os.com'
  config_key :mailer_url_options, default: {
    host: '',
    port: 80
  }
  config_key :system_mailer_receiver, default: 'noreply@beacon-os.com'

  config_key :redis_url, default: 'redis://localhost:6379'

  config_key :create_test_app_on_new_account, default: true
  config_key :autoload_extensions, default: {
    "Analytics"  => false,
    "DwellTime"  => false,
    "Kontakt.io" => false,
    "Presence"   => true
  }

  config_key :root, default: {
    username: 'root',
    password: 'toor'
  }
  config_key :landing_page_url
  config_key :lowest_floor, default: 1
  config_key :highest_floor, default: 10
  config_key :google_analytics_enabled, default: false
  config_key :google_analytics_id
  config_key :sandbox_cert_path
  config_key :production_cert_path
  config_key :sandbox_cert_passphrase
  config_key :production_cert_passphrase
  config_key :force_ssl

  config_key :hjid, default: 59670
  config_key :hjsv, default: 5

  config_key :mailchimp_key, default: ''
  config_key :mailchimp_list_id, default: ''
end
