# Expertise

*slogan/description*

## Brief
*A full stack developer needs to be able to demonstrate they can build a complete application from design through to deployment, using appropriate tools and methodologies.*

You are to design, build, deploy and present a Ruby on Rails application. This app will cater to two markets that your app brings together (think Ebay with buyers & sellers, AirBnB with travellers & house owners, Uber with travellers & drivers).

## What is *'Expertise'*?
Expertise is an app that connects people to experts, allowing them to book sessions with them quickly and efficiently, bypassing the hassles of finding and organising consultations from consultation companies and allowing people to get expert's advice when urgent

## Planning
The planning stage began on paper. This was mainly brainstorming the idea, articulating what I as a user would benifit from a service such as 'Expertse'. The next logical step was user stories. The user stories, written from my own perspective/persona helped outline the minimum needed features and also, solidified the validity of the idea.

I sketched some rough designs of the UI and accompanying user journey on paper, allowing me to map out the needed pages and actions needed. This helped better understand what models and controllers that would be needed. I allocated some time to looking at similar and/or competing sites to get an idea of the layout, and what current users expect from an app in this field. I used figma to create higher fidelity designs, informed by the original paper sketches, helping me understand better the required UI components and a better idea of the available space and amount of content that should be displayed.

I transferred all my paper notes to trello, as to keep all my notes in one place. It gave me a much needed overview of all the aspects of the project I needed to complete and was able to prioritize accordingly.

I planned out the models and thier attributes in trello, and when I was confident had the structure inplace, I created an ERD in dbdesigner to visualise the database and the relationships between the tables. This helped greatly in visualising the data structure and allowed me to make sure I had no superfluous fields.

<image of trello?>
https://trello.com/b/n4atPOiS/rails-project

## User Stories

## Data Structure
![](docs/images/erd.png)

### Models

#### User
```
- email
- password
```

#### Profile
```
- user_id
- first_name
- last_name
- bio
- avatar_data
```

#### Expertise
```
- expert
- title
- description
```

#### Session
```
- date
- expert
- user *need better name*
- location
- duration
- charge
```

#### Conversation
```
- user_a
- user_b
```

#### Message
```
- user_id
- conversation_id
- body
```

#### Review
```
- session_id
- reviewer
- rating
- review
```

## Design

### Style Guide | Research
<image of style guide>

As mentioned above, I allocated some time to researching competing sites and thier layouts. Though tangentailly related, I was greatly informed by Linkedin's site. Its a very busy and unfriendly site to navigate, not to mention unflattering for the users. My goal in designing the interface was to make it elegant, comprising of only the bare minimum of components, and having navigation limited to as few pages as possible. Another goal in the design is more subjective, I wanted the site to look like something people wanted to join. Even though my desing skills a quite lacking, the philosophy is that being an expert in a field is something of importance, and great pride to the individual. Ideally, I would like the desing to cater to a feeling of prestige. To compare Linkedin's design, there are many components that are fighting for attention of the visitor's eye, my intention was to highlight the 'experts' accomplishments and areas of expertise first and foremost, with any supplimentary content emphasised less.

<link to pintrest?>

## Wireframes
<image of wireframes>

My approach to designing the wireframes was to create wireframes with the components/features I believed I could ship in the alloted time, while designing it with a style I would like the finished product to look like if time wasn't an issue. The hybrid approach allowed me to better understand the user journey, omitting uneeded luxuries I wouldn't be able to deliver due to skill or time constraints, and also have the aethetic style inform the needed content and its placement on the page. I began with mobile design first, using a temporary monochromatic colour scheme to save time and also get a better idea of how to organise white space.

https://www.figma.com/file/eghlE7DgP40Nt59lSlbXGO/Major-Project?node-id=166%3A0

## Production

## Getting Started

Getting *Expertise* up and running.

## Technologies Used
The following technologies were used.

```
Ruby 2.4.1
Rails 5.1
Postgresql
Amazon S3 Cloud Storage
```

### Gems/APIs
```
gem ‘dotenv-rails’, groups: [:development, :test]
gem ‘aws-sdk’, ‘~> 3’
gem ‘devise’
gem ‘bootstrap’, ‘~> 4.0.0.beta’
gem ‘jquery-rails’
gem ‘fastimage’
gem ‘image_processing’
gem ‘mini_magick’
gem ‘shrine’
gem ‘geocoder’
gem ‘rspec-rails’, ‘~> 3.6’
gem 'pundit'
```

### Installing
Creating the project?
- First install required gems:
- Setup postgresql
- create DB

Included Devise in the Gemfile
```
gem 'devise'
```
Then run
```
bundle install
```
Add the following code to the mailer section of /config/environments/development.rb
```
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
```

Include Rspec in the Gemfile (in group :development, :test)
```
gem 'rspec-rails', '~> 3.6'
```

Run bundle install
```
bundle install
```

Initialise Rspec
```
rails generate rspec:install
```

Add dotenv to Gemfile. This must be at the top of the Gemfile
```
gem 'dotenv-rails', groups: [:development, :test]
```

Add shrine gem and it's depedencies
```
# Shrine Dependencies
gem 'fastimage'
gem 'image_processing'
gem 'mini_magick'
gem 'shrine'
```
Start Postgres server
```
# for Arch Linux
sudo systemctl start postgresql
```

Create Database
```
rails db:create
```

Create User (using devise)
```
rails g devise User
```

Add AWS-sdk gem to the Gemfile
```
gem 'aws-sdk', '~> 3'
```
```
bundle install
```

Then set up a new bucket and user.
Add credentials and bucket information to .env file

Include pundit in Gemfile
```
gem 'pundit'
```
## Deployment
Add additional notes about how to deploy this on a live system
- what commands/steps taken to deploy to heroku?


## Acknowledgments

  <div class="field">
    <%= form.label :user2_id, "whom do you want to message?" %>
    <%= form.collection_select :user2_id, User.where.not(id: current_user), :id, :email, id: :conversation_user2_id %>
  </div>
