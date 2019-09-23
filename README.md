# Wanda - template

This repository contains template project directory for a Wanda web application. `shards.yml` file declared all dependencies needed. This version requires you to have Crystal 0.30.0 or higher installed

## Installation

1. First, clone the repository:
```shell
$ git clone https://github.com/TheEEs/wanda.git [<your project name>]
```
2. cd into your project directory then re-initialize an empty git repos:
```shell
$ rm -rf .git
$ git init
$ git remote add origin <your remote git repos>
$ shards install
```

## Usage

#### 1. Create a simple controller
In terminal, type the following commands:
```shell
$ crystal bin/sam.cr -- generate:controller home index
```
This command will create a file `HomeController.cr` inside `app/controllers/` directory and a `index.ecr` file inside `views/home/`.

#### 2. Adding routers
Paste those code into `config/routers.cr`:
```crystal
Wanda.route do
    root HomeController, :index
    get "/home", HomeController, :index
end
```

#### 3. See your result in browser
In terminal, type:
```shell
$ crystal bin/wanda.cr
```

Then switch to your web browser and go to `localhost:2509`, `localhost:2509/home`

Server and additional configurations can be found at `config/config.cr`

## Contributing

1. Fork it (<https://github.com/TheEEs/wanda/fork>)
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

## Contributors

- [TheEEs](https://github.com/TheEEs) - creator and maintainer
