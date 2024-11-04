# concurrent-enum

`concurrent-enum` is a gem that enhances the `Enumerable` module with a `concurrent_map` method, enabling easy concurrent processing of collections.

This is especially useful for I/O-bound tasks, like API calls or database queries, where you want to limit the number of concurrent threads based on your system's capacity or external rate limits.

With `concurrent-ruby` doing all the heavy lifting, `concurrent-enum` offers a straightforward way to bring concurrency to Ruby collections.

## Usage

The # of threads needs to be set manually, as it depends on your particular use case (rate limits, response time, local processing time, etc.).

```ruby
records = list_of_ids.concurrent_map(max_threads: 10) do |id|
  expensive_api_call(id)
end
```

## Contributing

Issues and pull requests are welcome on GitHub at https://github.com/arthurhess/concurrent-enum.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
