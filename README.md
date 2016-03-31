# Meals Overflow
General Assembly Project 1: A rails application that allows users to post leftovers food. The purpose of this application is to conserve wasted food; rather than throwing away leftover, why not posted online and see if your fellow neighborhood bargain hunters would like to take a cheap or free meal? Users who post food can also ask or a gold coin donation, and in return from sharing their leftovers, they can receive critique and praise for their cooking skills.

## Models

* Users
* Reviews
* Posts

## Users

* Regular users that are not set as the admin can browse all current postings of food, and log into DISQUS to post comments and questions.
* To post leftovers, users must signup and log in or else they will be redirected to the homepage with an error message.
* Users that choose to contact the person who posted the leftover can also look at that user's reviews and ratings.
* Users can edit / delete only the posts they have created

## User: Admin

* The user that is set as the admin can log in and edit/delete all posts on the App.
* When the admin is logged in, the index of all users will appear at the nav, and the nav can see everyone who has signed up.

## Posts

Users have the option to post leftover food, and list the following details:

* Title
* Description
* Vegetarian (Yes/No via. a tick-box)
* Availability
* Portions
* Posted by (which User)

## Reviews

* All can post reviews of other users, can give them a rating on a scale from 1-10
* All users can also see the first name of other user who made reviews. The reviews field has review scale based on a 1-10 scale and a comment section.
