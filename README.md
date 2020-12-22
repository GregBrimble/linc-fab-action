# linc-fab-action

> Build and Upload a FAB to [Linc](https://linc.sh/).

[![GitHub Actions Example/Test](https://github.com/GregBrimble/linc-fab-action/workflows/Example/Test/badge.svg)](https://github.com/GregBrimble/linc-fab-action/actions?query=workflow%3AExample%2FTest)

## Usage

As a part of your [GitHub Actions](https://github.com/features/actions) workflow, add a new step as follows:

```yml
name: Deploy
on:
  push:
    branches:
      - master

jobs:
  deploy:
    name: Deploy
    runs-on: ubuntu-latest
    steps:
      - name: Checkout
        uses: actions/checkout@v2
      # Anything preparation steps you need
      - name: Build and Upload FAB to Linc
        uses: gregbrimble/linc-fab-action@v1.0.0
        with:
          api_key: ${{ secrets.LINC_API_KEY }}
          site_name: linc-fab-action-example
```

We strongly advise utilizing [GitHub Actions secrets](https://help.github.com/en/actions/automating-your-workflow-with-github-actions/creating-and-using-encrypted-secrets) to securely store your Linc API key.

A full example can be found in [`.github/workflows/default.yml`](https://github.com/GregBrimble/linc-fab-action/blob/master/.github/workflows/default.yml).
