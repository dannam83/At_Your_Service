# At Your Service

## Introduction
At Your Service is a model framework that mimics basic server and router functionality. This exercise will walk you through the steps that data goes through when it is sent to the server as a request, and then sent back to the user as a response.

## Setup
1. Download the folder
2. Navigate to the folder and run bundle install
3. Each section is equipped with a different server setup. To run each server, first make sure that you've exited from any previous servers in your terminal, and then run the prompted command in the terminal. Once the server is running, you can interact with it from any window at localhost:3000/.

Now let's get started!

## Demos
### The Server: Notepad Fun!
run server: bundle exec ruby bin/1_basic_server.rb

Here we have a basic server. Stripped of all its complexities, the role of the server is to simply receive requests, and send responses. This basic server is setup to take the provided url and return it back as text on the console.

Start by navigating to localhost:3000/ and open up the console. What do you see? Now try navigating to localhost:3000/this/is/fun!. What do you see now? How did the response in the console change? Go ahead and try entering other requests in the url. Just make sure all your changes happen after that first slash. As you experiment, you may find some values, such as spaces, that the url is not ready to handle. The url will send its own ASCII substitutions when that occurs.

### Controllers: Unstoppable Dug 🐶
run server: bundle exec ruby bin/2_controller_server.rb

In the first exercise, the server received a request from the url, and then it sent back information as text on the console. However, the server isn't usually the one to process the information that it receives. The server's main job is to receive the information and then send it out to the appropriate controller to process the information.

When a controller receives a request, it can either pull together information to send back to the server as a response, or it can redirect and change your url request entirely to give you something else that you didn't think you were asking for.

Now let's meet Dug! Go to localhost:3000/Dug. Did you find him? You'll find that Dug is extremely persistent and super clingy. In fact, in this server, you can't escape him! The controller has been setup to redirect everything to Dug. No matter what url you try to go to, if you're going somewhere at localhost:3000, you're always going to find Dug. Try seeing if you can escape him!

### Views: My Cats 🐱🐱🐱
run server: bundle exec ruby bin/3_router_server.rb

Dug was fun, but Dug is not good for websites. Controllers redirect when they need to, but the first response is to return information based on the request from the url and any other data submitted. For this exercise I've designed two simple url routes that show different information about my cats. Based on the url route that the controller gets, the controller will render information accordingly.

To see my cats, go to localhost3000/cats. This route gets directed to my cats controller and renders all my cats. If you want to know more about my cats, go to localhost/3000/:cat_id/statuses, inserting the id of the cat where you see ":cat_id". This url route with a cat's id hits my statuses controller and renders the statuses of the cat you chose. Go ahead and checkout my cats and see what they're like!

And that wraps it up. Thanks for checking out this demo!
