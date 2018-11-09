# README - Jon Gray Ruby-on-Rails project

This is a project for Sparta Global by Jon Gray as part of his training process. The task was to create a full stack app using Ruby-on-Rails, using a number of associated tables in a postgresql database.

This app is designed as a fan site allowing users to upload their favourite characters and cards from the game. Users must sign in or create an account before seeing the websites content - a feature added using the devise gem. From there, they may view existing database entries in a styled format, and are allowed to edit or delete those entries if they are the owner. Users may not edit each others posts. Users can also add comments to each others cards, and see everyone's comments along with their username. When making a comment, the comment is automatically attributed to their user and to the current card. All this functionality was achieved with a combination of rails scaffolds and devise.

The projects ran into a number of difficulties and learning moments:

* Adding features such as admin privileges should have been planned and implemented from the start.

* There were some issues with the database - if certain entries are deleted this could cause certain pages to fail. This has since been prevented

* Styling in CSS using the Foundation Framework. This was a chance to use a different framework other than bootstrap to widen my experience of CSS. However, clashes between erb sheets and their styling requires careful planning and consideration before starting. There are several elements in the site that are the best possible solution, but not ideal due to this.



Sprint 2 Intended features:

* Heroku deployment

* Database expansion

* Additional Javascript functionality (perhaps a simple game accessing the database?)

* Re-allow users to delete their accounts without causing site-wide issues

* Improved, dynamic styling.
