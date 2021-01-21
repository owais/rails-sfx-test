# This file is used by Rack-based servers to start the application.

require 'signalfx/tracing'

SignalFx::Tracing::Instrumenter.configure(auto_instrument:true)

#SignalFx::Tracing::Instrumenter.configure(
#  # tracer: OpenTracing.global_tracer, service_name: 'rails-test', span_tags: nil,
#  service_name: 'rails-test'
#) do |p|
#  p.instrument(:Rails, rack_tracer: true, exclude_events: [])
#  p.instrument(:Redis)
#  p.instrument(:Sidekiq, propagate: true)
#  p.instrument(:NetHttp)    
#end

require ::File.expand_path('../config/environment', __FILE__)
run Rails.application
