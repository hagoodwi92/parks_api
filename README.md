# README
This project is a rails API that generates national parks, and state parks of Oregon.

Endpoints
- [x] GET- /states, /states/:id, /nationals, /nationals/:id
- [x] POST- /states/, /nationals/
- [x] PUT- /states/:id, /nationals/:id
- [x] DELETE- /states/:id, /nationals/:id

Setup/Installation
1. `$ git clone` [this repository](https://github.com/hagoodwi92/parks_api)
2. `$ cd parks_api`
3. `$ bundle install`
4. `$ rails db:create`
5. `$ rails db:migrate`
6. `$ rails s` to start the server 

Known Bugs
- No known bugs at this time. 

Technologies used
- Ruby on Rails
  - ActiveRecord
  - rspec testing
  - factorybot
  - faker

Support
- Contact hagoodwi@gmail.com for support. 

License 
- {This software is licensed under the MIT license}
- Copyright (c) 2020 {Alex Goodwin}