## Readme

- User names need to be system detectable
- function names need to be system detectable


- Relationship needs to be graph based
- brides - moms - uncles - niece


## Roadmap

- User Story:
  - Im a bride, i know the functions. I am jotting down all events and want to track them
- Progress:
  - Setup myself as user
    - On save of user, throw him on Dashboard
    - One of the CTA's would be 'Resume Wedding Setup' (/weddings/new | /weddings/:id/start_tracking)
    - Needs a better verb/CTA prompt
  - Setup wedding DONE
  - Setup B/G DONE
  - Setup families (/weddings/:id/manage/families)(/attendees/)             <----
  - Access timeline
- Discoveries:
  - Build a dashboard, owner's view of the wedding. Aggregated info.
  - Override default save behavior to first save any dependent objects, set up their values on parent record. Can this be done for nested resources.
  - Add graph for relationships
  - Add a wedding_id column to all tables to add same_wedding validations for visibility & access control (authorization)
  - admin section is needed for content population and management. The app should tell you all your todos
  - begin a running tracking list for that
  - everything from sending invite, RSVPs, to food & drinks arrangements needed
  - Figure out the budget widget

## Events

1. mehendi
  groom
    number of attendees
    duration of event
    venue
    dress code
    makeup
    who's hosting
      food
      drinks
    event specific actions
      people who want to get mehendi done
    gaana bajana
    photos

  bride
    number of attendees
    duration of event
    venue
    dress code
    makeup
    who's hosting
      food
      drinks
    event specific actions
      people who want to get mehendi done
    gaana bajana
    photos

2. Haldi
  groom

  bride
    location (HOME)
    num attendees
    event specific actions
      tree planting and haldi ceremony


## Notes:
  request is to /relationships/create



## Learnings:
  require JS/CSS files on per page basis or layout basis. require at runtime. needs to be precompiled
