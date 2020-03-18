# MeetingManagementSystem

1. Angular.zip
MeetingProject
    --index.html  main page for angular
    --src/app
      --login
             login component
      --Menu
            header and footer component
      --viewDetails
            1. app.component.html
                routelet
            2. app.module.ts
                module all component, pipes, service
            3. app.routes.ts
                route configuration
            4. viewDetails.component.ts
                show calendar details  and delete
            5. addUpdateMeet.component.ts
                  add update Meeting
--assets
            config.json - configure api path for http request
--layouts
             login component
             home-layout component
--Security
            auth.guard - check for validate route  else redirect to login page
                         set token in sessionstorage
            auth.service - check for login authentication
--Service
            authInceptor.service.ts - intercepts each http request and set headers
            config.service.ts - configure config.json variable to use in each component.ts
            CustomPipes.ts - custom pipes to format bulleted attendees in callendar table
            data.services - htp get and post method
            globalerrorhandler.service.ts - global error handling services
            meeting.service - calendar component services
            storage.service - local and session storage  services
            user.service - authenticate  service for login
            
2. MMS_Web_API.zip

  








3. MMS.sql - database script and sample data
