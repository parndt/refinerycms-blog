# RefineryCMS Blog

__A blog plugin for the [Refinery](http://github.com/resolve/refinerycms) content management system.__

## Description

Blog post with

* Title, Body & Excerpt
* Filter by Categories tag
* Filter by Tags
* Filter by Authors tag
* RSS feed

Blog comments with

* Name, Email, Body
* Email confirmation by comment author
* Optional Captcha
* Optional manual moderation
* Optional email notification

Administration panel

* Write blog posts
* Manage comments (unmoderated/approved/refused)
* Change settings

## Installation (as a plugin)

First, make sure you've run the migration on RefineryCMS (db:setup / db:migrate).

Clone the plugin using the [url found here](#url_field).

After the plugin is in place, run the following to install

    rake refinery:blog:install
    rake db:migrate

This plugin's gem requirements are:

* [acts-as-taggable-on v2.0.2](http://github.com/mbleigh/acts-as-taggable-on)
* [fattr](http://github.com/ahoward/fattr)

To make tagging work place this in your ``Gemfile``

    gem 'acts-as-taggable-on', '= 2.0.2'

To make captcha work place this in your ``Gemfile``

    gem 'fattr'

Now run ``bundle install`` in your application's directory at command line.

__Note: If you are already using acts-as-taggable-on in your app, you may want to remove the migration file for "tags/taggings" tables.__
