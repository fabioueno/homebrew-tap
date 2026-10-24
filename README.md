<div align="center">
  <h1>homebrew-tap</h1>

  <p>Homebrew formulas for my tools.</p>
</div>

---

Each formula builds its tool from source when you install it, so no signed
binary is needed. A tool's own release workflow updates its formula here with
each new version.

## Install

```sh
brew install fabioueno/tap/teire
```

Or, in a Brewfile:

```ruby
tap "fabioueno/tap"
brew "teire"
```

## Formulas

| Formula        | Description                                                        |
| -------------- | ------------------------------------------------------------------ |
| [teire][teire] | Keeps a machine's dotfiles in the shape that a repository declares |

## License

[MIT][license]

[license]: LICENSE
[teire]: https://github.com/fabioueno/teire
