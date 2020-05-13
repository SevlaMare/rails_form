# Reddit
> A mini reddit clone to run on terminal.<br>

![screenshot](screenshot.png)

<br>This project consists of using Ruby On Rails to build a mini blog post system, based on command line. The application allows users to create posts and make comments.
<br>

## Content

* [Features](#features)
* [Built With](#built-with)
* [Getting Start](#getting-start)
* [Contributing](#contributing)
* [Acknowledgments](#acknowledgments)
* [Author](#author)
* [License](#license)

## Features

<ul>
  <li>The model has Authors, Posts and comments</li>
  <li>The tables has the correct relationships</li>
  <li>The inputs are checked for basic validations</li>
</ul>

## Built With

- Ruby 2.7 <br>
- Ruby on Rails 5.2 <br>
- Rubocop (Linter) with Stickler (CI Tool) <br>
- Git, Github and VScode <br>

## ERM Diagram

![screenshot](diagram.png)

## Getting Start

#### Install
To use this program, you will need install:
* Ruby Language - Version 2.5 up to 2.7 - [Install guide](https://www.ruby-lang.org/en/documentation/installation/)

* Ruby on Rails - Version 5.2 - [Install guide](https://guides.rubyonrails.org/v5.0/getting_started.html#installing-rails)


#### Get a local copy
Now you need a copy of this application, if you are using Git:
```js
git clone git@github.com:SevlaMare/reddit.git
```
Otherwise just hit (Download Zip) on green button (Clone or Download) at top of this page.


#### Run
To run, from the application folder, just type on terminal:
```js
rails server
```
Now you can go to your favorite web browser like Google Crome
<br>and go to this page: http://localhost:3000/

#### Use examples


```js
rails console
```
##### To insert some data:
We can create an author
```js
x = Author.create(username: "userA", email: "abc@email.com", password: "password123")
```

Make a post
```js
x.posts.create(title: "new post", body: "this is a post")
```

Make a comment
```js
Post.first.comments.create(body: "some text", user_id: 1)
```

##### You can query some values, like:

retrieve a user
```js
user1 = Author.find(1)
```

check his first comment
```js
c1 = user1.comments.first
```

see comments that belongs to this author
```js
c1.author
```
can do the same for posts:
```js
p1 = Post.first
p1.comments.first
c1.post
```
to leave
```js
exit
```

### Contributing

Contributions, issues and feature requests are welcome!

You can do it on [issues page](issues/).

## Acknowledgments

A special thanks for the code reviewers.

## Author

👤 **Rafael Nazario**

- Github: [@rsnazario](https://github.com/rsnazario)
- Twitter: [@rsnazario](https://twitter.com/rsnazario)
- Linkedin: [Rafael Nazario](https://www.linkedin.com/in/rafael-nazario-692b8293/)

👤 **Thiago Miranda**

- Github: [@SevlaMare](https://github.com/SevlaMare)
- Twitter: [#SevlaMare)](https://twitter.com/SevlaMare)
- Linkedin: [SevlaMare)](https://www.linkedin.com/in/sevlamare)

### License

<strong>Creative Commons</strong>

