## Project: RecordStore App API

### Ruby On Rails API wih Vue.Js

#### 





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
    - rails g controller signup create ;
    - rails c (  Artist.create!(name: "AC/DC") , Artist.create!(name: "Christian dior"), Artist.all,  ) ;

    * Install and configure Vue :
      - yarn global add @vue/cli @vue/cli-service-global ;
      - vue --version ;
      - vue init webpack recordstore-front ;
      - yarn global add @vue/cli-init ;
      - vue init webpack recordstore-front ;
      - ( All yes only Setup e2e tests with Nightwatch? No  ) ;
      -  cd recordstore-front ;
      - yarn dev ;
      - Check this : Your application is running here: http://localhost:8080  ;
      - tree . -I "node_modules"  ;
      - yarn add taiwindcss ;
      - ./node_modules/.bin/tailwind init ;
      - yarn add axios vue-axios ;
      - 

```