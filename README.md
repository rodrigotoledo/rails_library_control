# Rails 7 Project with Hotwire, Simulated Book Imports, and Reading Tracking using Tailwind CSS

## Introduction

This Ruby on Rails 7 project showcases how technology can be used effectively to create an engaging and functional user experience. In this project, we leverage Rails 7 along with the powerful tools of Hotwire and Tailwind CSS to simulate a book management and reading tracking application in real-time.

## Hotwire

Hotwire is a revolutionary technology that accelerates modern web development. In our project, we employ Hotwire to craft rich and interactive interfaces that allow users to experience the speed of a single-page web application without compromising on usability and accessibility. Real-time updates provide a seamless and responsive user experience without the need for page reloads.

## Simulated Book Imports

One of the standout features of this project is the simulation of book imports. With rake task, we will import Books and with this update the user interface without refresh, this can be easy changed to some API endpoint.

## Simulated Reading

The project also includes a reading simulation feature, also using rake task where can mark books as read. This enables them to track their reading progress for each book in their library. The seamless integration with Hotwire ensures that reading updates are instantaneous and visible to all users.

## Running the background jobs

Maybe you want to run the background jobs, so we will run will use the gem `whenever` with a little trick. It's because maybe your user can't update the crontab so you need run with

`bundle exec whenever -i --set 'environment=development'`

Of course if you need run in production environment, just change to production
If you need stop and clear your crontab run

`bundle exec whenever --clear-crontab`

## API

Big part of the projects needs to have an api to implement access to the resources. Here we implement the API of importing resources of Books using Postman.

## StimulusReflex

With StimulusReflex class we can dispatch requests to background classes and update the frontend without refreshing the page.


---

**Contribute to this project:** [Link to GitHub](https://github.com/rodrigotoledo/rails_library_control)
**If you want to contribute for the channel, please make a pix to:** `3ee71e15-dfd7-4a93-9cb3-e5bc7fda5825`