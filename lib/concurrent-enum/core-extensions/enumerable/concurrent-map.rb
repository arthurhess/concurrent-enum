require 'concurrent-ruby'

module Enumerable
  def concurrent_map(max_threads:)
    return to_enum(:concurrent_map, max_threads:) unless block_given?

    pool = Concurrent::FixedThreadPool.new(max_threads)
    values = []

    begin
      promises = map do |item|
        Concurrent::Promises.future_on(pool) { yield(item) }
      end

      values = promises.map(&:value!)
    ensure
      pool.shutdown
      pool.wait_for_termination
    end

    values
  end
end
