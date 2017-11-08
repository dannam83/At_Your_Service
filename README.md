# At Your Service

## Introduction
At Your Service is a model framework that mimics basic server and router functionality. This demo will walk you through the steps that data goes through when it's sent to the server as a request, and then sent back to the user as a response.

## Setup
1. Download the folder
2. Navigate to the folder and run bundle install
3. Each demo is equipped with a different server. To run each server, first make sure that you've excited from any previous servers, and then run the provided command in the terminal. Once the server is running, open up a window to localhost:3000/.

Now let's get started!

## Demos
### The Server: Notepad Fun!
TERMINAL: bundle exec ruby bin/1_basic_server.rb

Here we have a basic server. Stripped of all its complexities, the role of the server is to simply receive requests, and send responses. This basic server is setup to take the provided url and return it back as text on the console.

Start by navigating to localhost:3000/ and open up the console. What do you see? Now try navigating to localhost:3000/this/is/fun!. What does the console say now? Go ahead and try anything you'd like! As you experiment, you may find some values, such as spaces, that the url is not ready to handle. The url will make its own ASCII substitutions when that occurs.

### Controllers: Unstoppable Dug 🐶
TERMINAL: bundle exec ruby bin/2_controller_server.rb

Controllers are what dictate the response that is sent back from a request. Either you are immediately rendered content or you are redirected to another url that renders content. For this demo you'll meet Doug! Go to localhost:3000/Dug. Did you find him? You'll find that Dug is extremely persistent and super clingy. In fact, in this server, you can't escape him. Every url gets redirected to Dug and renders Dug content. Go ahead and try to escape him by going to a different url. Good luck!

### Views: My Cats 🐱🐱
TERMINAL: bundle exec ruby bin/3_router_server.rb

Dug was fun, but Dug is not good for routes. Controllers are redirect when they need to, but the first response should be to return a response based on the route and the data provided. For this part of the demo I've designed two simple routes that show different information about my cats. Based on the route that the controller gets a request for, the controller should then render the correct view page for that route. 

To see my cats, go to localhost3000/cats. This route gets directed to my cats controller and renders the cats index view. If you want to know more about my cats, go to localhost/3000/:cat_id/statuses. You can insert the id of the cat that you want to see. This route hits my statuses controller and renders the statuses index page of the cat that you choose.

Go ahead and checkout my cats!

And that wraps it up. Thanks for checking out this demo! 
