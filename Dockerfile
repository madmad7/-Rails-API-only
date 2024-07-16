# Use a base image with Ruby 2.7.2
FROM ruby:2.7.2

# Install necessary packages
RUN apt-get update -qq && apt-get install -y nodejs postgresql-client

# Set the working directory inside the container
WORKDIR /app

# Install a compatible version of Bundler
RUN gem install bundler -v 2.4.22

# Copy the Gemfile and Gemfile.lock into the container
COPY Gemfile Gemfile.lock ./

# Install dependencies
RUN bundle install

# Copy the rest of the application code into the container
COPY . .

# Expose port 3000 to the outside world
EXPOSE 3000

# Command to run the Rails application
CMD ["rails", "server", "-b", "0.0.0.0"]
