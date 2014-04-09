SpreeShipworks
==============

[ShipWorks](http://shipworks.com/) is the easiest way to ship your orders. 
ShipWorks manages your online orders, prints your shipping labels, and updates your
marketplaces with shipment details.

[Spree](http://spreecommerce.com/) is one of the largest open source software projects
in the world -- not just e-commerce software, but out of all categories.
It’s one of the most robust, refined technologies that you could ever hope to use.

SpreeShipworks is a project to integrate those tools.

How does it works
================

First add the gem to your Gemfile

    gem 'spree_shipworks', :github=>'crowdint/spree_shipworks'

Then run

    bundle install


This is going to add a route from where Shipworks will retrieve or send
order information

    http://yourdomain/shipworks/api

In your Shipworks App you need to setup using 'generic module' as your store option and
config this URL along with an user with admin privileges

Notes
=====

Shipworks use a field int64 to save the order number but on Spree 2.2
site order number is an string beginnig with 'R' everytime, for that
reason before the order is send to Shipworks the 'R' is removed from the
order number and when Shipworks returns information for the order that
'R' is added to the beginnig of the order number

Example
=======

Testing
-------

WIP: Be sure to bundle your dependencies and then create a dummy test app for the specs to run against.

    $ bundle
    $ bundle exec rake test_app
    $ bundle exec rspec spec

Copyright (c) 2013 [name of extension creator], released under the New BSD License
