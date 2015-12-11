# Lightweight Docker Image for Aglio

A lightweight Docker image for [Aglio](https://github.com/danielgtaylor/aglio) an API Blueprint renderer with theme support that outputs static HTML

It provides:
  - aglio@2.2.0

## Usage

  docker run --rm -v $PWD:/data lucor/aglio -i api.apib -o index.html --theme-full-width
