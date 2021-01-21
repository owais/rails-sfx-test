
class TestController < ApplicationController
  def hello
    TestWorkerJob.perform_later('bob', 5)
  end
end
