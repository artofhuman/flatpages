# Flatpages

Simple gem for save static pages in database

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'ckeditor'
gem 'flatpages'
```

Install and configure ckeditor
Then run

```
rails generate flatpages:install .
```

And add to your routes.rb before root route

```ruby
mount Flatpages::Engine => '/'
```

## Usage

For make link to static page use route like this
```
flatpages_engine.flatpage_path('contacts')
```
