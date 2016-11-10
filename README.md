# glut-cr

GLUT bindinds for Crystal language.

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  glut-cr:
    github: TamasSzekeres/glut-cr
```

Then run in terminal:
```bash
crystal deps
```

## Usage


```crystal
require "./glut-cr/*"
```

For more details see the sample in [/sample](/sample) folder.

## Sample

Build and run the sample:
```bash
	mkdir bin
	crystal build -o bin/sample sample/simple_window.cr --release
	./bin/sample

```

## Contributing

1. Fork it ( https://github.com/TamasSzekeres/glut-cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [TamasSzekeres](https://github.com/TamasSzekeres) Tamás Szekeres - creator, maintainer
