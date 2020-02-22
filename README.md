## Project: RecordStore App

### Ruby On Rails API wih Vue.Js







* NOTES :
```
    - rails new recordstore-back --api ;
    - Add gems into gemfile ;
    - rails generate model User email password_digest ;
    - rails db:migrate ;
    - rails g scaffold Artist name ;
    - To delete : rails d scaffold Artist ;
    - rails g scaffold Artist name:string user:references ;
    - rails db:migrate ;
    - rails g scaffold Record title:string year:string artist:references user:references  ;
    - rails db:migrate ;
    - 

```