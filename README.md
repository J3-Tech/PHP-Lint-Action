# Run [PHP Lint](https://github.com/php-parallel-lint/PHP-Parallel-Lint) in Github Actions

Usage
-----

```yaml
name: CI

on: [push]

jobs:
  phplint:
    runs-on: ubuntu-latest
    name: PHP Lint
    steps:
    - uses: actions/checkout@v2
    - id: PHP-Lint
      uses: J3-Tech/PHP-Lint-Action@v0.0.5
      with:
        path: .
        exclude: vendor
```

Inputs
------

The following configuration options are available:

+ `path` - A php source code filename or directory. Can be a comma-separated string
+ `exclude` - comma-separated string of patterns that are used to ignore directories.
