1. program flow
  user starts app
  grab concerts for this coming week
  user chooses to look by type, ensemble, or composer
  if type: live concert, planetary, premiere
  user can search by instrument/ensemble
  events are displayed for user
  user selects and event and sees details about it

2. classes
  scraper - gets data about upcoming concerts
  concert - knows about concerts, stores all concerts
  cli - interact with user

CLI
-welcome user - Call
-choose by type, instrumentation, composer
-if type, list and describe: live concert, premiere, planetary music
  -choose by number, display concerts, choose by number and display details
-if instrumentation - enter instrument and same
-if none, say so and ask for another search
-if exit, vale and end program
