To run the service: 

ruby runner.rb

To change auth keys: 

config app/config/apis.yml, change the 'token' to something desired or the api_base_url

Design: 

So while this is not complete, I wanted to go over my thought process on designing this service. Basically I designed a base HTTP class to interact with the API. It loads the config YAML data and uses that to make get and post requests to the API. I have 3 services to deal with the different API calls we have to make, they are very light and depend on the HTTP base class. 

These get called by a class called Runner, this runner basically is the Main method to this whole think, I think of it like a controller. You run it in the console and it calls the inventory service to get the inks and the question service to get all the questions from the API. Once you have that information, the idea was the Runner would take the question object grab all the colors then go to the inventory and see how much each color would cost for each layer and return the cheapest neighbor to the questions color. That part I was not able to complete. 

The calculator method is a bit off, while I could have used a library like Color, I chose not to because it felt like cheating. I did look up wikipedia and figure out my own color difference algrothim but it is not correct. In a production enviroment I would have used a color library however within this context it felt rather unethical. Perhaps not because I depended on other services, ex rspec, nethttp etc... 

