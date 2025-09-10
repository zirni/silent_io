# frozen_string_literal: true

require_relative "silent_io/version"
# module SilentIo
#   class Error < StandardError; end
#   # Your code goes here...
# end
class SilentIO
  def self.call
    original_stdout = $stdout
    original_stderr = $stderr
    $stdout = StringIO.new
    $stderr = StringIO.new
    yield
  ensure
    $stdout = original_stdout
    $stderr = original_stderr
  end
end
