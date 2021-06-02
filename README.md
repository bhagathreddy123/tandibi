rails new tandibi -d postgresql -T
Rails version: 6.0.3.7
Ruby version: ruby 2.6.5p114

rails g rspec:install
The spec/support folder doesn't exist by default. so we need to create the directory by using the command in Listing

mkdir -p spec/support



rails g annotate:install

 rails g scaffold Product title description:text image_url:string price:decimal