# README

### Installing on local machine
1. Clone to your local machine `git clone https://github.com/derricklai33/rails-marketplace-coderfitz.git`
2. `cd` into folder
3. Run `bundle install`
4. Run `yarn install --check-files`
5. Create, migrate and seed database `rails db:{create, migrate, seed}`
6. Start rails server `rails s`
7. Copy `http://localhost:3000/` onto your browser 

### Using Heroku
Account 1 <br>
email: test-user@test.com <br>
password: qwe123

Account 2 <br>
email:test-user@test.com <br>
password: qwe123

### **Identification of the problem you are trying to solve by building this particular marketplace app.**
There are a large population of people in Australia that are passionate in the streetwear section of fashion. Numerous amount of people buy and sell streetwear sneaker and apparels everyday. A lot of these transactions are done through Facebook groups, through posts after posts with the product that they wish to buy and sell. A lot of these Facebook posts usually gets filtered out by other general Facebook posts that the users have on their platform and a lot of these posts tends to get unnoticed by another buyer or seller that has genuine interest on these products. The chances of spotting the post, and then proceeding to purchase or sell a product has been fairly difficult to manage on a Facebook group.

The purpose of this application is to give to the people a platform where buyers and sellers can list their products, without needing to closely monitor for potential Facebook posts. In the platform, users will be doing transactions through a secure platform, without the risk of handling payment transactions personally.

### **Why is it a problem that needs solving?**
The problem with selling products on Facebook group can be messy and very inconsistent. There are issues with buyers or sellers that are not able to monitor the flow of Facebook posts regarding the product they want to purchase or sell. The idea of the application is to allow users to be able to monitor what listings are up, whether if they are apparels or sneakers, and will continue to stay available until it has been purchase. The application is catered to a niche group of people that are passionate about sneakers and streetwear apparels. 

There are also the existence of consignment stores, where people are able to sell their products through a consignment service. However, the 'catch' of purchasing and selling through a consignment store is that the prices are inflated by a large amount, and the consignment service takes a cut from the sale of the product. The application aims for the sole purpose of allowing users to buy and sell, at the cost of nothing extra. 

### **A link (URL) to your deployed app**
https://rails-marketplace-coderfitz.herokuapp.com/

### **A link to your GitHub repository**
https://github.com/derricklai33/rails-marketplace-coderfitz

### Description of your marketplace app (website), including:
- **Purpose** <br>
The purpose of this application is to allow streetwear enthusiasts the ability to buy and sell streetwears products at their own set price, without the needs of using Facebook or consignment stores as main source of streetwear transactions.

- **Functionality / features** <br>
Through the creation of an account on the application, it provides the user the ability to make a new listing, of their desired products at their own price. Users can also provide multiple images and the location of the seller to further promote their product. The application also builds a profile automatically based on the number of listings that are  currently active and number of listings that they have sold, to show credibility of the seller. Also, users are able to purchase products after creating an account, with the ability to check their purchased orders in the application.

- **Sitemap** <br>

- **Screenshots** <br>

- **Target audience** <br>
The target audience for this application are people that are streetwear enthusiasts, which wishes to purchase or sell streetwear products, without the use of platforms such as Facebook groups or consignment stores. 

- **Tech stack** <br>
  - Ruby on Rails
  - Ruby
  - HTML
  - CSS/SASS
  - Javascript
  - Amazon AWS S3 cloud storage
  - PostgreSQL relational database
  - Heroku deployment
  - Bootstrap
  - Stripe
  - SendGrid
  - Mapbox/leaflet

### **User stories for your app**
**Seller**
- As a seller, I can have an account
- As a seller, I can list products for sale
- As a seller, I can set the title of the product
- As a seller, I can set the price for the product
- As a seller, I can set the size of the product
- As a seller, I can set the category of the product
- As a seller, I can set the location of the product
- As a seller, I can attach images to product
- As a seller, I can edit the listed product
- As a seller, I can delete the listed product
- As a seller, I can will receive an email when my listed product is sold

**Buyer**
- As a buyer, I can have an account
- As a buyer, I can buy any products that are listed
- As a buyer, I can visit the sneaker page
- As a buyer, I can visit the apparel page
- As a buyer, I can check profiles of sellers
- As a buyer, I can see details of product
- As a buyer, I can see my purchase history

**Non-account user**
- As a non-account user, I can browse the apparel page
- As a non-account user, I can browse the sneaker page
- As a non-account user, I can check the profile of sellers

### **Wireframes for your app**

### **An ERD for your app**
Refer to R19

### **Explain the different high-level components (abstractions) in your app**
The 'abstraction' in Rails refers to abstraction via inheritance where in Rails, a model inherits from ApplicationRecord which inherits from the base class ActiveRecords.This allows a simple Rails model access to numerous helper methods that keeps a Rails application more readable. Some of the components using abstraction via inheritance that were used in the application includes:

- Models that inherits from ActiveRecord base through ApplicationRecord
  Through ORM, SQL queries were abstracted through methods such as `.new` and `.create` are examples that executes database queries to create an object, which is then return to the database to be saved, without the need of writing actual SQL queries to communicate with the database. The `.where` and `.find` method does SQL queries to query for looking through a database based on an attribute of the model and to look for an entry in the database through its id respectively. Also, using attribute queries such as `.price` and `.title` refers to the attributes of an existing entity in a model.

- Controllers that inherits from ActiveController through ApplicationRecord
  Using `redirect_to` helpers to redirect users upon an action in the controller. Through the use of `render` to render partials such as navbar and to re-render forms again upon an unsuccessful create or update action. Also, using strong parameters, Rails has require some parameters to be specifically 'allowed' before they are stored in the ActiveRecord models. 

### **Detail any third party services that your app will use**
  - **Amazon S3 cloud storage** <br>
  Amazon S3 cloud storage was mainly used in conjunction with Rails ActiveStorage to store images remotely. 
  - **Heroku web application deployment** <br>
  Heroku is the platform that the web application is deployed to that is available online. 
  - **Leaflet, Mapbox and Geocoding** <br>
  Leaflet, Mapbox and Geocoding was implemented to allow users to input location of listings, which is then converted to longitude and latitude coordinates which will precisely locate the position in a displayed map on the product page.  
  - **Stripe and Ultrahook** <br>
  Stripe and Ultrahook was implemented as the payment system and checking if the payment is valid using webhooks. Stripe payments allows a user to be redirected to the payment page, where they are able key in their credit card details and info, which are then sent through a post request to a webhook to verify the payment. 
  - **SendGrid**
  SendGrid was used in conjunction with Rails ActionMailer to automate the process of sending an email based on certain actions that are made in the application. An email is automatically sent to the email of the user upon making a listing, selling a listing and making a purchase.

### **Describe your projects models in terms of the relationships (active record associations) they have with each other**
While working through the application, there was changes on some of the implemented models that were made redundant. Initially, there was a `sneaker` and `apparel` model, which has a `shoe_size` and `brand`, `apparel_size` and `brand` attached with a `has_one` and `belong_to` relationship. The `sneaker` and `apparel` model are then associated with the `listings` model, acting both as a validator and using a `.collection_select` rails method to fill up the listings. However, there was a complication with implementing the said models and then decided to use Javascript instead to fill up listings using a `collection_select` that is pure HTML, CSS and Javascript. This means that the dynamic aspect of  the form in filling up the listings is limited to the limitations of hard-coded product title, size and brand. 

The associations and relationships of the models for this application is then changed to be:
- User - `has_many :listings`, `has_many :order`, `has_one_attached :profile_picture`
- Listings - `belongs_to :user`, `has_one :location`, `has_many :order`, `has_many_attached :images`
- Order - `belongs_to :user`, `belongs_to :listing`
- Location - `belongs_to :listing`
- ApparelSize and ShoeSize - Does not have any associations. Purely to be used in form for sorting purposes

### **Discuss the database relations to be implemented in your application**
- **User model**
  - This model that is generated through devise holds information about the user. This provides users the ability to have an account with information such as `email`,`contact_number`, `first_name` and `last_name` for identification purposes.

  A `user` model will have:
    - many `listings` - listings that are associated with the user. Is `optional to have none or many`
    - many `orders` - orders that a user has purchased. Is `optional to have none or many`
    - one `profile_picture` - profile picture for user profile. Is `required to have one`

- **Listing model**
  - This model provides the users the ability to make a listing and store the necessary information such as `title`, `price`, `brand`, `size`, `category` and `location` as its attributes. This model also holds a `user_id` foreign key, which associates with the `user` model.
  
  A `listing` model will have:
    - one `location` - location to showcase exact location of the listing. Is `required to have one`
  
  Important attributes:
  - `sold` - this provides the "status" of the listing, using enum of 0 and 1, where 0 = unsold and 1 = sold product. This enables the listings to show up in the active listing pages according to their categories.

- **Location model**
  - This model provides the location of a listing through a `listings_id` foreign key. It has `city`, `state` and `country` which converts to `longitude` and `latitude` for exact coordinates. 

- **Order model**
  - This model provides the purchased order for a user through a listing. The `user_id` and `listing_id` foreign key associates the buyer and seller's listing through this model.

  An `order` model will have:
    - `listing_id` - This associates the listing that is listed by a seller. Is `required to have one`
    - `user_id` - This associates the order purchased by a buyer. Is `required to have one` 

- **ApparelSize and ShoeSize model**
  - These models serves as a `.collection_select` to be used in a sorting feature, using `enum` on its `size` attribute. 

- **Database relations**:
  - `user` one to many `listings`
  - `listings` one to one `location`
  - `user_id` many to many `order` many to many `listing_id`

### **Provide your database schema design**
https://dbdiagram.io/d/5fa758643a78976d7b7af4c5

### **Describe the way tasks are allocated and tracked in your project**
- **Link to trello board:** https://trello.com/b/S82A63z1/rails-apparel-marketplace

The project was tracked and managed using Trello. Trello offers the ability to create different lists that could be named after according to the user's needs. All aspects and features of the application, including the documentation were segmented into different Trello cards. This clearly separates each tasks to its on card and with sections such as "Completed" and "In progress", the flow of the project is clear and pacing for completion can be increased or decrease accordingly.

The biggest roadblock or hurdle that presented itself in this assignment was the planning and completing the ERD. As the ERD keeps changing as the application developed, there was the constant need to start over or to make a drastic change on the ERD to properly visualise the tasks ahead. There was also the issue with implementing webhook along with Stripe. Stripe implementation was fairly straight forward but the implementation of webhook on top of Stripe has caused the payment system to fail and unable to process order in the application. A further review on the documentation and video lesson on Stripe and webhook and the problem was solved eventually. 

The lists that are used in my Trello board are:
  - **User stories** <br>
  The user story list is where all the user stories are stored, that includes user stories as a buyer and seller. 
  - **Rails Feature** <br>
  This section is where all the desired Rails features that are (or would like to) implement into the application. 
  - **Documentation** <br>
  All documentations related that are required to be included in the README.md file are under this section.
  - **In progress** <br>
  In progress is where all the features or documentations that are currently a work in progress go under. This keeps clarity on what I am currently working on and not losing track of working on something else.
  - **Completed** <br>
  Completed is where all of the completed features or documentation Trello card falls under.
  - **Future implementation** <br>
  Future implementation is the section where features that are planned, but was not able to complete within the given time frame for our assignment. These can be reviewed in later dates and possibly implement them. 
