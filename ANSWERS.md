# Q0: Why is this error being thrown?
We have not generated a Pokemon model yet

# Q1: How are the random Pokemon appearing? What is the common factor between all the possible Pokemon that appear? *
In routes.rb, we redirect the root/home page to home_controller which generates a list of trainerless Pokemons and then a random Pokemon is chosen and shown from that list. 

# Question 2a: What does the following line do "<%= button_to "Throw a Pokeball!", capture_path(id: @pokemon), :class => "button medium", :method => :patch %>"? Be specific about what "capture_path(id: @pokemon)" is doing. If you're having trouble, look at the Help section in the README.
When you click on "Throw a Pokeball!", the button leads to capture path that returns the path of capture, which is pokemon#capture.

# Question 3: What would you name your own Pokemon?
Togepi

# Question 4: What did you pass into the redirect_to? If it is a path, what did that path need? If it is not a path, why is it okay not to have a path here?
I passed in trainer_path(id: @pokemon.trainer_id).
It needed a trainer object.

# Question 5: Explain how putting this line "flash[:error] = @pokemon.errors.full_messages.to_sentence" shows error messages on your form.
It redirects the user back to the same form but with a red error message at the top of the page. The message method is rendered in application.html.erb

# Give us feedback on the project and decal below!

# Extra credit: Link your Heroku deployed app
