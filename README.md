# PC Builder App back end

This repository is the back-end for my final project for the WDI course at General Assembly.

The PC Builder App allows users to find compatible parts for a desktop computer, it is aimed primarily at enthusiasts and gamers, it also caters for low budgets. 
It is designed to be simpler to use than any comparable tool I've found on the internet. 

## Dependancies

- Ruby 2.3.1p112
- Rails 5.1.1, along with things that come with it
- bcrypt 3.1.7
- PostgreSQL
- rack-cors
- active model serializers 
- JWT

The front end has it's own readme.


## Deployment

Simply download the repo and run ```bundle```.

You should run the full suite of commands to create and seed the database. 

```
rails db:drop db:create db:migrate db:seed
```

Ensure postgres server is running and run ```rails s``` to start the server.

I have pushed it to Heroku but I have had problems getting the front-end to interface correctly. 


## Database 

### Models

I used ```rails g scaffold ...``` for my models to make the process simple, I generated a controller for authentications and migrations for the join tables with the exception of the parts to parts table. 

A normal generated join table looks like this. 

```
class CreateJoinTableRigPart < ActiveRecord::Migration[5.1]
  def change
    create_join_table :rigs, :parts do |t|
      # t.index [:rig_id, :part_id]
      # t.index [:part_id, :rig_id]
    end
  end
end

```

Whereas I modified a migration, a normal table which is then used as a join table, which looks like this.

```
class CreateIncompatibilities < ActiveRecord::Migration[5.1]
  def change
    create_table :incompatibilities do |t|
      t.bigint :part_id
      t.bigint :incompatibility_id
    end
  end
end

```

#### User
Self explanitory, mostly. The user object contains a lot of data regarding the machines the user has made. 

- has many rigs

#### Part
The Part model contains parts of all types.

- has one part type
- has and belongs to many rigs

#### Type
Or Parttype, denotes the type of a part, allows me to retrieve parts by type making a few things much simpler than alternative methods.

- has many parts

I have used a self-join table for incompatible parts.

- has and belongs to many incompatible parts


#### Rig
This is the hub model, it contains an array of parts of all types. It is also the only model that can be created or edited by users. 

- has and belongs to many parts
- has one user

#### Notes
The only code I had to write for the back end, apart from authentication, was the serializers for these models. I wrote a nice piece of middleware for the rig model to populate two levels down. 

```
def parts
	object.parts.map {|part| PartSerializer.new(part, {root: false})}
end
```

## Authentication

I used bcrypt and JWT for authentication. First, creating an auth class in the lib folder to issue and decode tokens, then manually writing out the authentications controller. 

I also changed the generated routes for authentication.

```
post 'register', to: 'authentications#register'
post 'login', to: 'authentications#login'
```

I created ```password_digest``` in the user model and used ```has_secure_password``` to convert this into ```password``` and ```password_confirmation```.

It is because of this that the in-built rails tests now fail. 

## Future plans

This back-end is pretty solid, the only thing I might want to work on in future is fixing and fleshing out the tests. 

I also mean to remove the back-end routes that I'm not using, for now anyone with insomnia can modify the database. 

To this end, I also want to verify user status, so only admins can hit certain routes.