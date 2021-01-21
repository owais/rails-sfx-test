class TestWorkerJob < ActiveJob::Base
  queue_as :default

  def perform(*args)
    puts '>>>>>>>>>>>>>>>>>>>>>>::::::::: TestJob'
  end
end
