rails new tandibi -d postgresql -T
Rails version: 6.0.3.7
Ruby version: ruby 2.6.5p114

rails g rspec:install
The spec/support folder doesn't exist by default. so we need to create the directory by using the command in Listing

mkdir -p spec/support


Tandibi is a social media app, a user can sign up then they can follow other users. they would be happy if they also could post their pictures their status updates,

rails g annotate:install

 rails g model User username:uniq first_name last_name email:uniq is_public:boolean