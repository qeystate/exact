# [Choice] Ruby version: 2, 2.7, 2.6, 2.5
ARG VARIANT=2.7-bullseye
FROM mcr.microsoft.com/vscode/devcontainers/ruby:0-${VARIANT}

# Install Rails
RUN gem install rails webdrivers 

# Default value to allow debug server to serve content over GitHub Codespace's port forwarding service
# The value is a comma-separated list of allowed domains 
ENV RAILS_DEVELOPMENT_HOSTS=".githubpreview.dev"

# [Choice] Node.js version: lts/*, 16, 14, 12, 10
ARG NODE_VERSION="lts/*"
RUN su vscode -c "source /usr/local/share/nvm/nvm.sh && nvm install ${NODE_VERSION} 2>&1"

# [Optional] Uncomment this section to install additional OS packages.
RUN apt-get update && export DEBIAN_FRONTEND=noninteractive \
    && apt-get -y install --no-install-recommends graphicsmagick postgresql-client redis-server curl build-essential

# [Optional] Uncomment this line to install global node packages.
# RUN su vscode -c "source /usr/local/share/nvm/nvm.sh && npm install -g <your-package-here>" 2>&1
RUN gem install foreman bundler:2.2.33 rubocop rufo

# Install apt based dependencies required to run Rails as 
# well as RubyGems. As the Ruby image itself is based on a 
# Debian image, we use apt-get to install those.

# Install rbenv
RUN git clone https://github.com/rbenv/rbenv.git /opt/rbenv

# Add rbenv to the path:
RUN echo 'eval "$(/opt/rbenv/bin/rbenv init - bash)"' >> ~/.bashrc

SHELL ["/bin/bash", "-c"]

RUN source ~/.bashrc

RUN /opt/rbenv/bin/rbenv -v

# Install ruby-build:
# RUN mkdir /tmp/ruby-build
# RUN git clone https://github.com/rbenv/ruby-build.git /tmp/ruby-build
# RUN cd /tmp/ruby-build && ./install.sh

# pushd /tmp
#   git clone git://github.com/sstephenson/ruby-build.git
#   cd ruby-build
#   ./install.sh
# popd

# Install Ruby 1.9.2-p290:
RUN /opt/rbenv/bin/rbenv install 2.7.3
RUN /opt/rbenv/bin/rbenv global 2.7.3

# Rehash:
RUN /opt/rbenv/bin/rbenv rehash

# Configure the main working directory. This is the base 
# directory used in any further RUN, COPY, and ENTRYPOINT 
# commands.
# RUN mkdir -p /app 
# WORKDIR /app

# Copy the Gemfile as well as the Gemfile.lock and install 
# the RubyGems. This is a separate step so the dependencies 
# will be cached unless changes to one of those two files 
# are made.
# COPY Gemfile Gemfile.lock ./ 
# RUN gem install bundler

# Copy the main application.
# COPY . ./

# Expose port 3000 to the Docker host, so we can access it 
# from the outside.
# EXPOSE 3000

# The main command to run when the container starts. Also 
# tell the Rails dev server to bind to all interfaces by 
# default.
# CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]