![](https://img.shields.io/badge/Microverse-blueviolet)


# Ruby on Rails Private-Event implementing Association

In this project we built a site similar to a private Eventbrite which allows users to create events and then manage user signups. Users can create events and join other events. Events take place at a specific date and at a location.

A user can create events. A user can attend many events. An event can be attended by many users. This will require many-to-many relationships and also to be very conscious about your foreign keys and class names.

#### Did the following tasks:
In this project we created a simple user system and secret posts in Ruby on Rails.
- Created a user Authentication model
- Create Event 
- Created a Event controller
- Created view pages for event, show & form
- Create migration files with table rules
- Add devise to user for Authentication (sign_in ,sign_up)
- Adjust associations between models
- Create migration files with required foreign keys
- visitor model, view, controller setup
- The associations between Event and User model over middle table

<!-- TABLE OF CONTENTS -->

## Table of Contents

* [About the Project](#about-the-project)
* [Built With](#built-with)
* [Contact](#contact)
* [Acknowledgements](#acknowledgements)

<!-- ABOUT THE PROJECT -->

## Installation

To use THIS ACTIVE record project :
* Have ruby installed in your computer
* [Download]https://https://github.com/billodiallo/private-events/) or clone this repo:
  - Clone with SSH:
  ```
  git@github.com:billodiallo/private-events.git
  ```
- Clone with HTTPS
  ```
    https://github.com/billodiallo/private-events.git
  ```
* `cd` into `private-events` directory and run `bundle install`


## Built With
- Ruby
- Ruby on Rails

## Run app
- Type bundle install in the root file of the project.
- Type rails db:migrate in the root file of the project.
- Type rails s in the root file of the project.
- You can go to rails console by typing rails console and create Member by using Active Record  commands and methods.

## LINTERS
- Rubocop
- Stylelint

<!-- CONTACT -->
## Contact

👤 Billo Dallio

- GitHub: [@billodiallo](https://github.com/billodiallo)
- Twitter: [@BilloDi83547008](https://twitter.com/BilloDi83547008)
LinkedIn: [Billo Diallo](https://www.linkedin.com/in/mabillodiallo/)

👤 **Denis Andrei Diaconu**

- GitHub: [@CacheMeGifYouCan](https://github.com/githubhandle)
- Twitter: [@twitterhandle](https://twitter.com/twitterhandle)
- LinkedIn: [Denis Diaconu](https://linkedin.com/linkedinhandle)
<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements
* [Microverse](https://www.microverse.org/)
* [Ruby Documentation](https://www.ruby-lang.org/en/documentation/)


## 📝 License

Copyright 2021 Denis And Billo Diallo

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.


THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

