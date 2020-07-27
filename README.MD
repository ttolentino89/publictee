## PublicTee aka 'TestPublic' Product Finder! :tshirt:

TestPublic is a Ruby Command Line program that reads product data from a JSON file and allows users to find product details by type and zero or more options, and returns the remaining categories with the available options.

Here it is in action:

![testpublicdemo](https://user-images.githubusercontent.com/27389714/88489289-7d594080-cf61-11ea-914b-0cf693167f72.gif)


## Implementation + Testing :heavy_check_mark:

To run this program locally, please enter the following commands in your terminal:

1.  ```git clone https://github.com/ttolentino89/publictee.git```
2.  ```cd testpublic```
3.  ```ruby testpublic.rb```

If you're not familiar with using the terminal or command line interface (CLI) on your computer, that's totally okay! There's a great tutorial on common CLI commands [here](https://blog.galvanize.com/how-to-use-the-terminal-command-line/) that I highly recommend for first-timers.


## Observations :mag:

Considering that Ruby is the language I have the least experience writing, this was a fantastic exercise to get some practice in and familiarize myself with Ruby syntax. I noticed that a lot of object-oriented principles were more or less the same as with other programming languages I've worked with, especially when it came to class methods.

I also found myself making the mistake of writing .includes? instead of .include? more often than I like to admit, most likely from JavaScript + Java muscle memory. And forget "elsif", every single one of those was originally written as an "elseif" until my code editor pointed out that what I had just typed was incorrect.

And I will be the first to admit that I'm not entirely sure what the runtime is for this program, but considering that my methods for finding product options are relatively heavy because of several repetitive conditional statements, I wouldn't be surprised if this isn't the most efficient runtime. But hey, at least it works flawlessly! :tada:

That being said, I would like to adhere to the "DRY" (don't repeat yourself) philosophy of programming, which means that there's probably plenty of room for refactoring + "Marie Kondo-ing" this program's code.


## Future goals :bulb:

Unfortunately, I was not yet able to create automated unit tests for this particular program. However, I do plan on eventually creating an rspec file to ensure that my methods are actually doing what they're supposed to (which, as all developers know, is half the battle, if not more.) Passing green tests are quite possibly the most satisfying thing ever and I can't wait to create those for TestPublic.

You can learn more about rspec [here](https://rspec.info/).

As of right now, TestPublic is only able to accept user choices in the "correct" order, i.e. tshirt > color > size as outlined in the code snippet below:

```
#map through all tshirt options

genders = Tshirt.all.map(&:gender).uniq
colors = Tshirt.all.map(&:color).uniq
sizes = Tshirt.all.map(&:size).uniq

#split user selection subcategories into gender, color, size

selectedGender = options[1]
selectedColor = options[2]
selectedSize = options[3]
```

If the user inputs their selection's options in the wrong order, such as "red tshirt male" for example, the program is unable to recognize this and fails. I'd like to refactor this so that the user can input selections in any order, and still receive a valid answer.

I would also like to add an option to have the user choose whether or not they'd like to continue + search for another another item, or exit. As of right now, this program only continues if the user's original selection was invalid, as it prompts the user to select again and recalls the getItem method. This is probably unnecessary and is not in the original assignment, but I think it'd add a nicer overall user experience instead of cold booting the user out once the program is finished running.


## References :books:

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

Before settling on creating a simple(ish) Ruby program, I originally had ambitious plans to create this in Rails with Docker, but eventually realized that there was probably no need for this since there wouldn't be an external database to connect to, nor would there really be any client-facing UI. To top it all off, there was literally no need for containerization, and I really only wanted to use Docker as a learning experience but also didn't want to fall into the "rabbit hole" with a weeklong time constraint. I did, however, create a scaffolded Rails template with Docker and MySQL for this project, which I may upload on a separate branch. To create this, I literally just followed the (in my opinion, solid) YouTube tutorial below:

https://www.youtube.com/watch?v=a-jcTib9ZPA

If you're interested in using Ruby with Docker, Docker has excellent official doc(k?)umentation on how to do so [here](https://hub.docker.com/_/ruby).


## Special thanks to :raised_hands:

Ms. Mary Rooney (Recruiter) & Mr. Michael Porter (Engineering Manager) for giving me the chance to to take a stab at this fun Ruby learning opportunity!
