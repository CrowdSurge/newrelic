#
# Cookbook Name:: newrelic
# Resource:: agent_java
#
# Copyright 2012-2015, Escape Studios
#
actions :install, :remove
default_action :install

attribute :license, :kind_of => String, :default => nil
attribute :version, :kind_of => String, :default => 'latest'
attribute :install_dir, :kind_of => String, :default => '/opt/newrelic/java'
attribute :execute_agent_action, :kind_of => [TrueClass, FalseClass], :default => true
attribute :app_location, :kind_of => String, :default => nil
attribute :app_user, :kind_of => String, :default => 'newrelic'
attribute :app_group, :kind_of => String, :default => 'newrelic'
attribute :agent_type, :kind_of => String, :required => true, :default => 'java'
attribute :template_cookbook, :kind_of => String, :default => 'newrelic'
attribute :template_source, :kind_of => String, :default => 'agent/newrelic.yml.erb'

attribute :enabled, :kind_of => [TrueClass, FalseClass], :default => true
attribute :app_name, :kind_of => String, :default => nil
attribute :high_security, :kind_of => [TrueClass, FalseClass], :default => false
attribute :logfile, :kind_of => String, :default => nil
attribute :logfile_path, :kind_of => String, :default => nil
attribute :loglevel, :kind_of => String, :default => nil
attribute :daemon_logfile, :kind_of => String, :default => '/var/log/newrelic/newrelic-daemon.log'
attribute :daemon_loglevel, :kind_of => String, :default => nil
attribute :audit_mode, :kind_of => [TrueClass, FalseClass], :default => false
attribute :log_file_count, :kind_of => Fixnum, :default => nil
attribute :log_limit_in_kbytes, :kind_of => Fixnum, :default => nil
attribute :log_daily, :kind_of => [TrueClass, FalseClass], :default => false
attribute :daemon_ssl, :kind_of => [TrueClass, FalseClass], :default => true
attribute :daemon_proxy, :kind_of => String, :default => nil
attribute :daemon_proxy_host, :kind_of => String, :default => nil
attribute :daemon_proxy_port, :kind_of => String, :default => nil
attribute :daemon_proxy_user, :kind_of => String, :default => nil
attribute :daemon_proxy_password, :kind_of => String, :default => nil
attribute :capture_params, :kind_of => String, :default => nil
attribute :ignored_params, :kind_of => String, :default => nil
attribute :transaction_tracer_enable, :kind_of => [TrueClass, FalseClass], :default => true
attribute :transaction_tracer_threshold, :kind_of => String, :default => nil
attribute :transaction_tracer_record_sql, :kind_of => String, :default => nil
attribute :transaction_tracer_stack_trace_threshold, :kind_of => String, :default => nil
attribute :transaction_tracer_slow_sql, :kind_of => String, :default => nil
attribute :transaction_tracer_explain_threshold, :kind_of => String, :default => nil
attribute :error_collector_enable, :kind_of => [TrueClass, FalseClass], :default => true
attribute :error_collector_ignore_errors, :kind_of => String, :default => nil
attribute :error_collector_ignore_status_codes, :kind_of => String, :default => nil
attribute :browser_monitoring_auto_instrument, :kind_of => String, :default => nil
attribute :cross_application_tracer_enable, :kind_of => [TrueClass, FalseClass], :default => true
attribute :thread_profiler_enable, :kind_of => [TrueClass, FalseClass], :default => true
attribute :labels, :kind_of => String, :default => nil
