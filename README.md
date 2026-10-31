# Multifactor for Homebrew

The Homebrew tap for the [Multifactor](https://multifactor.com) desktop app on macOS.

```sh
brew install --cask multifactor/tap/multifactor
```

The app updates itself, so `brew upgrade` leaves it alone unless you pass `--greedy`. To remove it with its data, run `brew uninstall --zap --cask multifactor`.

Each Multifactor release updates `Casks/multifactor.rb` from the app's release workflow. Please report problems at [multifactor.com/company/contact-us](https://multifactor.com/company/contact-us).
