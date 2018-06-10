## Readme

- User names need to be system detectable
- function names need to be system detectable


Relationship needs to be graph based
brides - moms - uncles - niece


## Roadmap

User Story:
Im a bride, i know the functions. I am jotting down all events and want to track them

Progress:
  Setup myself as user
    On save of user, throw him on Dashboard
    One of the CTA's would be 'Resume Wedding Setup' (/weddings/new | /weddings/:id/start_tracking)
    Needs a better verb/CTA prompt
  Setup wedding DONE
  Setup B/G DONE
  Setup families (/weddings/:id/manage/families) <----
  Access timeline

Discoveries:
  Build a dashboard, owner's view of the wedding. Aggregated info.
  Override default save behavior to first save any dependent objects, set up their values on parent record. Can this be done for nested resources.
  Add graph for relationships
