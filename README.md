# Current User Issue

The problem is that the view-side of StimulusReflex sees `current_user` as whoever visited the site first.
Along the way, the Rails controllers and Reflexes properly see the `current_user` as the person making the request.

## How To Reproduce

- Install the required gems with `bundle install`
- Run the migrations with `bundle exec rails db:migrate`
- Run `bundle exec rails s` to start the server
- Visit <http://localhost:3000>
- Sign up for an account with e.g. `one@one.com`/`password`
- See the correct `current_user` displayed on the page as well as in the Rails logs
- Click the `Do it` button
- See the correct `current_user` displayed on the page below the button as well as in the Rails logs
- Open a new private browser window
- Sign up for a second account with e.g. `two@two.com`/`password`
- See the correct `current_user` displayed on the page as well as in the Rails logs
- Click the `Do it` button
- See the _wrong_ `current_user` displayed on the page below the button, but see the _correct_ `current_user` in the Rails logs
