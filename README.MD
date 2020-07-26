## PublicTee aka 'TestPublic' Product Finder!

TestPublic is a Ruby Command Line program that reads product data from a JSON file and allows users to find product details by type and zero or more options, and returns the remaining categories with the available options.

## Implementation + Testing

To run this program locally, please enter the following commands in your terminal:

1.  ```git clone https://github.com/ttolentino89/publictee.git```
2.  ```cd testpublic```
3.  ```ruby testpublic.rb```

## Future goals:

Unfortunately, I was not yet able to create automated unit tests for this particular program, however I do plan on eventually creating an rspec file to ensure that my methods are actually doing what they're supposed to (which, as all developers know, is half the battle, if not more.) Sometimes there's just nothing more satisfying than passing green tests!

You can learn more about rspec here:
https://rspec.info/

## References:

A healthy amount of googling + stack overflowing went into this project's creation, which includes (but is not limited to) the following resources and links below:

- https://hackernoon.com/ruby-how-to-readwrite-json-file-a23h3vxa
- https://www.twilio.com/blog/2015/10/4-ways-to-parse-a-json-api-with-ruby.html
- https://learn.co/lessons/nested-arrays-ruby
- https://git.generalassemb.ly/sei-nyc-mandalorians/Ruby_OOP_lesson
- http://ruby-for-beginners.rubymonstas.org/writing_classes/instance_variables.html
- https://stackoverflow.com/questions/5544858/accessing-elements-of-nested-hashes-in-ruby
- https://stackoverflow.com/questions/37535971/how-do-i-import-ruby-classes-into-the-main-file
- https://www.honeybadger.io/blog/ruby-self-cheat-sheet/
- https://apidock.com/ruby/Enumerable/all%3f
- https://stackoverflow.com/questions/5018633/what-is-the-difference-between-print-and-puts

Before settling on creating a simple(ish) Ruby program, I originally had ambitious plans to create this in Rails with Docker, but eventually realized that there was probably no need for this since there wouldn't be an external database to connect to, nor would there really be any client-facing UI. To top it all off, there was literally no need for containerization, and I really only wanted to use Docker as a learning experience but also didn't want to fall into the "rabbit hole" with a weeklong time constraint. I did however create a scaffolded Rails template with Docker and MySQL for this project, which I may upload on a separate branch. To create this, I literally just followed the (in my opinion, solid) YouTube tutorial below:

https://www.youtube.com/watch?v=a-jcTib9ZPA

## Special thanks to:

Ms. Mary Rooney (Recruiter) & Mr. Michael Porter (Engineering Manager) for giving me the chance to to take a stab at this fun Ruby learning opportunity!
