rails new tandibi -d postgresql -T
Rails version: 6.0.3.7
Ruby version: ruby 2.6.5p114

rails g rspec:install
The spec/support folder doesn't exist by default. so we need to create the directory by using the command in Listing

mkdir -p spec/support


Tandibi is a social media app, a user can sign up then they can follow other users. they would be happy if they also could post their pictures their status updates,

rails g annotate:install

 rails g model User username:uniq first_name last_name email:uniq is_public:boolean

 we use the model Bond to indicate a connection between one user and another. it has the state field to indicate the state of the connection. 


 state                            description.
 requesting        when a user senda a follow request to another user( which will be accepting 
                                         autometically    if it's a public account)
 following          when a user is following another user      
 blocking              When a user is blocked another user

 rails g model post user_id:bigint thread_id:bigint postable:references{polymorphic}
rails g model Picture post_id:bigint caption
rails g model status text

PG::UndefinedFile: ERROR:  could not open extension control file "/usr/share/postgresql/12/extension/postgis.control": No such file or directory

sudo apt install postgis postgresql-postgis

PostGIS seems to be the tool of choice in the commuinity for managing spatial and geographical data. Other than using PostGIS we may use postgresqls own data type or even primitively store the points manually as different columns.

rails g model Sight place:refereces activity_type
