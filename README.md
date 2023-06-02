Referral Application - Alpish Singhal

Installation
----------------------------------------------------------------
1. Clone the repo.
2. Check database.yml in config folder and cross check if your mysql username and password matches the one present inside file, if not update it.
3. Must have ruby 3.0.1 
4. cd to repo & Run setup with command - bin/setup
5. start server with command - rails s
6. Navigate to http://localhost:3000/users/sign_in
7. To Login, use existing email as shared in previous section of Seed Data or Sign up with your own user!
8. User can check the Email Preview on link - "http://localhost:3000/rails/mailers/referral_mailer/send_referral_email" since actual email service is not setup.

Seed Data
----------------------------------------------------------------
* User1: ds@example.com, password: test123
* User2: ds2@example.com, password: test123, referred_by: User1
* Referred Email by User1: ds@referral.com)

Run Rspecs
----------------------------------------------------------------
> Command - bundle exec rspec

API Endpoints details
----------------------------------------------------------------
* User can Sign Up & Sign In via API using POST requests. APIs end points are defined at "api/v1/sign_up" & "api/v1/sign_in"
  
  Request format for Sign Up:

  Note: "referred_by_id" is optional.

  {
   "user": {
    "email":"test@test.com",
    "password":"test123",
    "password_confirmation": "test123",
    "referred_by_id": "1"
   }
  }
  
  
  CURL - 
  
  curl --location --request POST 'http://localhost:3000/api/v1/sign_up' \
  --header 'Content-Type: application/json' \
  --header 'Cookie: *********** \
  --data-raw '{
       "user": {
   "password_confirmation": "132323223323",
   "password": "132323223323",
   "email": "test@abwdwec1.com",
   "referred_by_id": "1"
       }
  }'

* For Login, User can use the "authentication_token" received in response on Sign-Up. Request headers should contain: 'X-Auth-Email' & 'X-Auth-Token'


  CURL - 

  curl --location --request POST 'http://localhost:3000/api/v1/sign_in' \
  --header 'X-Auth-Email: test@abwdwec1.com' \
  --header 'X-Auth-Token: *********** \
  --header 'Cookie: ***********


  
You are good to go!!!!!
