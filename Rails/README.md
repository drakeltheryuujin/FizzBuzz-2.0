# README

##### Required updates to Knock setup as of 1/12/2018

* Run `bundle install`
* Run `rails db:create && rails db:migrate`
* Start up the rails console using `rails console` and create a user, example:
```>User.create!(email: 'kellyecodes@gmail.com', password: 'kellyecodes')```
This should create the user. Use the command User.last to see that the user has been added to the database with an encrypted password:
```<User id: 1, hometown: nil, password_digest: "$2a$10$N9XCxl3eBNYI150jKJ5TB.WG.kR5AVUeq4YSS94SDdx...", tagline: nil, created_at: "2018-02-13 00:47:33", updated_at: "2018-02-13 00:47:33", username: nil, email: "kellyecodes@gmail.com">```
* Run `rails generate knock:install`
* Now run the rails server with `rails s`
* Open a new terminal tab and run the below comming replcing the email and password with the earlier created user credentials.
```
curl -X POST "http://localhost:3000/user_token" -d '{"auth": {"email": "kellyecodes@gmail.com", "password": "kellyecodes"}}' -H "Content-Type: application/json"
```
* You should receive a response with an access token such as:
```
{"jwt":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE1MTg1NjkyOTgsInN1YiI6MX0.KmQ9cJjcEl5W3C7wuASjJXZVS4Wh49wRSOmlwUde9rs"}
```
* Open a new tab and cd into codeChallenge. Run `npm start`.
* Type `y` when you receive the prompt `Would you like to run the app at another port instead? [Y/n]`
* Launch `http://localhost:3001/` in a browser window and login with your previously created credentials

### That should be it! Enjoy! 👍🏾
