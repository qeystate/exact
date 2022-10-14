## Ruby Devcontainer

Simple container used to create a development environment for ruby on rails with:
    * postgresql
    * Chrome webdrivers for rails system tests
    * Stripe CLI for payments processing
    * bash_completion for speedier cli usage
    * Rufo, Rubocop, and htmlbeatifier for code style linting


# Usage

CD to the root of a desired rails project and run `git clone git@github.com:scope2229/ruby-devcontainer.git .devcontainer`

Rename the devcontainer
    `devcontainer.json:2`

Once the rails app has been created uncomment `postCreateCommand` in `devcontainer.json` this will setup the rails app should
the container be rebuilt/created.

# Customize

To install additional OS apt packages use `Dockerfile`

To install additional global gems use `Dockerfile`

To install additional packages that require fetching a key add to the end of `Dockerfile`

For vscode extensions update `devcontainer.json`

To run additional commands post/Create/Start `devcontainer.json`

