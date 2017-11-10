# Expertise
![](docs/images/logo_med.png)

*Connecting teams & individuals with Experts, quickly, efficiently and with urgency*

## Brief
*A full stack developer needs to be able to demonstrate they can build a complete application from design through to deployment, using appropriate tools and methodologies.*

You are to design, build, deploy and present a Ruby on Rails application. This app will cater to two markets that your app brings together (think Ebay with buyers & sellers, AirBnB with travellers & house owners, Uber with travellers & drivers).

## What is *'Expertise'*?
Expertise is an app that connects people to experts, allowing them to book sessions with them quickly and efficiently, bypassing the hassles of finding and organising consultations from consultation companies and allowing people to get expert's advice with urgency.

### The problem
There currently is no available option to easily find expert advice and/or guidance with urgency, without locating companies or agencies. The need for urgent advice, during any given stage of a project is important in delivering a product on time, or ensuring that the project is headed in the best possible direction, where time is a primary factor.
### The solution
A centalized, 'Uberfication' of the consulting industry, allowing experts in various fields or multidisciplinary experts to provide their time and services to teams and/or individuals in need of urgent advice. This flexibility is more condusive to an agile and adaptive project orientated work environment. It also offers the ability to find advice in multiple fields without the need to join multiple ecosystems, as frequently, projects in all areas of industry can span multiple fields. It also allows individual experts to have a wealth of experiences and opportunities to add to their portfolio, they might not heretofore had access to.
## Planning
The planning stage began on paper. This was mainly brainstorming the idea, articulating what I as a user would benifit from a service such as 'Expertise'. The next logical step was user stories. The user stories, written from my own perspective/persona helped outline the minimum needed features and also, solidified the validity of the idea.

I sketched some rough designs of the UI and accompanying user journey on paper, allowing me to map out the needed pages and actions needed. This helped better understand what models and controllers that would be needed. I allocated some time to looking at similar and/or competing sites to get an idea of the layout, and what current users expect from an app in this field. I used figma to create higher fidelity designs, informed by the original paper sketches, helping me understand better the required UI components and a better idea of the available space and amount of content that should be displayed.

I transferred all my paper notes to trello, as to keep all my notes in one place. It gave me a much needed overview of all the aspects of the project I needed to complete and was able to prioritize accordingly.

I planned out the models and thier attributes in trello, and when I was confident had the structure inplace, I created an ERD in dbdesigner to visualise the database and the relationships between the tables. This helped greatly in visualising the data structure and allowed me to make sure I had no superfluous fields.

<image of trello?>
https://trello.com/b/n4atPOiS/rails-project

## User Stories
In order to: receive urgent feedback on my edit, as an amateur filmmaker I want to find someone with Expertise in video editing ,that can review my work and give valid feedback

In order to: Prepare myself for studying Web Development As a: future student I want to: Find an experienced Web Dev to inform me the tools I need and communities I should be a part of

In order to: Advise me on how to progress toward a career in cyber security As a: person not sure what path to take I want to: Speak with a Cyber Security expert and get advice based on *my* current situation

In order to: Better plan my business/start-up venture As a: entrepreneur I want to: Run my idea past someone who has succeeded in the same area I want to get into

In order to: Make sure the person I want to get consoltation from is indeed qualified As a: prospective user I want to: See the person's qualifications, and linkedin profile to assertain wheather they are indeed qualified.

In order to: Organise a meet up with an expert As a: person who wants advice I want to: Be able to message the person directly

In order to: Get an idea of how good/benificial this expert is. As a: person in need of their Expertise I want to: See what other users have said about their experiences

In order to: save time messageing potential experts about their availability As a: busy person with a strict schedule I want to: See an experts general availability on thier profile

In order to: Know if the expert is the kind of person I want to get advice from As a: potential user I want to: read a short bio on this person, to learn about thier accomplishments and get an idea about their personality

In order to: save time As a: budget conscious person I want to: see the experts price rate on their profile

In order to: organise a meeting with an expert in my area As a: user who needs a face to face meeting I want to: see what experts are in my area/city

In order to: organise a meeting with an expert not in my area As a: user who can't travel far I want to: be able to video chat with the expert.

In order to: Make some side income As a: an expert in a field with spare time I want to: offer my time to advise/consult people in need of my Expertise

In order to: Ensure I have flexibility with my time As a: an expert in a field with flexable spare time I want to: offer my time to advise as a "once-off" basis, or not be locked into consulting/advising on a regular basis.

In order to: prove to people that I have the talent to back up my claims As a: an experienced filmmaker I want to: be able to display my work on my profile for visitors to see

In order to: bring people into my profile As an: expert new to the site I want: people to see that my services are available on other social media networks **An example of this is: A person on youtube who produces content about X, might have a link in the description linking to thier profile "Want personalised advice from me about X? get in touch on....."

In order to: build up my profile As a: new expert to the site I want to: show how many successful sessions I've given

In order to: narrow down potential experts As a: Person in need of advice I want to: search and filter experts by their expertise

In order to: Start getting advice/guidance from an expert As a: potential user I want to: Be able to create an account

In order to: build by profile and reputation in the community  As a: New expert I want to: be able to contribute to the community, writing mini blog posts that are viewable by all users

In order to: Bring people to the site, As the creator of the site I want there to be: content that can access and be linked to externally. People who may not use the site may find the content interesting to read.

In order to:  Keep track of my sessions, As an: Active expert, I want to: see all my upcoming sessions of the week/month

In order to: Book and confirm my session, As a: user in need of advice, I want to: be able to make an online payment.

In order to: Confirm that I have initiated and payed for a session, As a user of the site I want to: Receive an email confirming the time/date and my payment info

In order to understand the context of a message, as a user, I want to see the previous messages in a conversation with another user

In order to better connect with my community, as a user, I want to be able to upload a photo of myself


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

#### ExpertiseArea
```
- expert
- title
- description
```

#### Booking
```
- date
- expert_id
- client_id
- location
- duration
- charge_identifier
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
![](docs/images/wireframes.jpg)

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
Heroku
```

### Gems/APIs
```
gem 'devise'
gem 'pundit'
gem 'bootstrap', '~> 4.0.0.beta2.1'
gem 'jquery-rails'
gem 'mailgun-ruby', '~>1.1.6'

# Shrine & Dependencies
gem 'fastimage'
gem 'image_processing'
gem 'mini_magick'
gem 'shrine'

# AWS
gem 'aws-sdk', '~> 3'

# Stripe
gem 'stripe'

# Font Awesome
gem "font-awesome-rails"
```

### Installing

Expertise relies on a select amount of services In order to operate. These services require accounts to be created before the application can be properly deployed. In this first section, I will the services that accounts need to be registered for.

Amazon AWS account (for S3 storage) 
Stripe (for credit card payments)
Mailgun (for automated emailing systems)
Heroku (for deployment)

Clone the repo to a local machine, and setup postgresql.

If a development database is needed for testing before deployment, it must first be created. Note: it is helpful to make sure postgresql is running. See relevant documentation based on your operating system.

To create the database
```
rails db:create
```
As all require gems are included in the gemfile, nothing needs to be added, all that is needed is to run bundle to install the require gems and dependancies

```
bundle install
```

Next, we need to initialize the following gems: Devise, Rspec, Pundit. Run the following commands.
```
rails g devise:install
rails g pundit:install
rails g rspec:install
```

The database is created, but we haven't migrate. Run:
```
rails db:migrate
```

At this point, accounts for all required services must be registered. The next step is to add all require credentials from the following services, and add them to the .env file in the root of the project.

#### Amazon AWS (S3)
Using Amazon AWS, created a new user. Its important to take note of the user's 'access key ID' and 'secret access key' as these credentials will be needed in later steps.  Next, create a group with the following permissions
```
AmazonS3FullAccess
```
Add the user to this group.

#### Mailgun
Using Mailgun, navigate to your account's dashboard and locate the domain section. Select/Create a domain, you wish to use for Expertise, and navigate to the Authorized recipients area and select 'Manage Authorized Recipients'

A valid email address must be authorised and then verified, to receive support emails.

Again, its important to take note of the selected domains and its API key, as they will both be required in later steps.

#### Stripe
From Stripe's dashboard, navigate, using the left-side menu, to the API section. In this section, you will have access to both a 'Publishable Key' and 'Secret Key'

#### Adding credentials to .env
The next step is to add these keys to the .env file
```

S3_ACCESS_KEY_ID = 
S3_SECRET_ACCESS_KEY = 
S3_REGION = *region code of S3 bucket
S3_BUCKET = *name of S3 bucket

MAILGUN_API_KEY = 
MAILGUN_DOMAIN = 

SUPPORT_EMAIL = *verified email account to be used for support

PUBLISHABLE_KEY = 
SECRET_KEY = 
```

As these new environment variables have been added, restarting the Rails server is required.

## Deployment
To deploy to Heroku, ensure that the system you are deploying from has the Heroku toolbelt(CLI) installed and are currently logged in using your Heroku email and password.

If not logged in, run:
```
heroku login
```

Note: Heroku relies on Git, so it is important to ensure that the project is stored in Git.

In the root of the project run the following command to create the app on Heroku:
```
heroku create
```
To confirm that the remote was added to the project run:
```
git config --list | grep heroku
```
Before deploying to Heroku, you need to add the environment variables from the .env file and add them directly to the heroku project.

Login to your Heroku dashboard and select your project
![](docs/images/heroku-01jpg)

Click on the settings link at the top right
![](docs/images/heroku-02.jpg)

Then select 'Reveal Config Vars'
![](docs/images/heroku-03.jpg)

In the fields provided, add all the environment variables and their corrisponding keys
![](docs/images/heroku-04.jpg)

With those in place, you can now run the command to push the project to Heroku
```
git push heroku master
```

With the project successfully deployed, the next step is to migrate the database
```
heroku run rake db:migrate
```

To ensure that a dyno is running, execute
```
heroku ps:scale web=1
```
To check the state of the app's dyno, run
```
heroku ps
```
Finally, to visit the page, simply run
```
heroku open
```


## Challenges
The main challenge I face during this project was my limited skills with Ruby on Rails. Working on this project highlighted the aspects of Rails that I struggle with, allowed me to pin point, and better articulate my weaknesses as well as outline what I need to work on to better understand Rails and frameworks in general.

I also found it hard, trying to conceptialise the implementation of more challenging features, for example, allowing a user to assign the areas of expertise to their account. Having worked through the problem with Reugen, I feel I have a much better idea of how I will appraoch future problems of a similar nature.

## Future Features
With time and skill level being a factor during development, there were many features that I didn't have the opportunity to implement, as well as many future features, I knew weren't feasble given the time and scope of the project.

#### Styling

#### Review/Rating system

#### Social Media Features and Integration

#### Content Creation(Simple Blogging Tools) 

#### The ability display credentials/examples of prior work