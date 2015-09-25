# Rails Girls in 36Kr

## Steps

### create project

```shell
rails new railsgirls-36kr
```

### change gem source to taobao

edit `Gemfile`

```ruby
#source 'https://rubygems.org'
source 'http://ruby.taobao.org'
```

### bundle

```shell
bundle install
```

### run

```shell
rails s
```

### look in browser

```shell
http://localhost:3000
```

### add routes


add routes to `config/routes.rb`

```ruby
Rails.application.routes.draw do
  root 'welcome#index'
end

```

### add controller

```shell
rails generate controller welcome index
```

### add model

```shell
rails g model friend name:string password:sting introduction:text
```

### add a friend

```shell
rails console
```

```ruby
a = Friend.new
a.name = 'chad'
a.password = '123456'
a.introduction = 'hi, all girls'
a.save
```

### show all friends

edit `app/controllers/welcome_controller.rb`

```ruby
class WelcomeController < ApplicationController
  def index
    @friends = Friend.all
  end
end

edit `app/views/welcome/index.html.erb`

```ruby
<table>
  <tr>
    <td>ID</td>
    <td>Name</td>
    <td>Password</td>
    <td>Introduction</td>
  </tr>
  <% @friends.each do |friend| %>
    <tr>
      <td><%= friend.id %></td>
      <td><%= friend.name %></td>
      <td><%= friend.password %></td>
      <td><%= friend.introduction %></td>
    </tr>
  <% end %>
</table>
```

### result

![Rails Girls in 36kr Demo](http://a.36krcnd.com/nil_class/035aad7a-ee87-4082-b79e-081d18e31305/rails-girls-36kr.jpg)


## Some photos

![Rails Girls in 36kr Demo](http://a.36krcnd.com/nil_class/bbd005af-6e11-4dca-b5c7-c8d83d847775/demo1.jpg)
![Rails Girls in 36kr Demo](http://b.36krcnd.com/nil_class/be1b8569-1cd1-400f-9e8b-14dcf85b12db/demo2.jpg)
![Rails Girls in 36kr Demo](http://c.36krcnd.com/nil_class/3d28b433-94dc-4710-adac-30a99978f59a/demo3.jpg)
![Rails Girls in 36kr Demo](http://d.36krcnd.com/nil_class/428fe9fb-f476-40a8-b7ba-8fd570298967/demo4.jpg)

