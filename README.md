# MUSA-620-Week-12
Shiny, Part 1

![Shiny Leaflet](https://github.com/MUSA-620-Spring-2018/MUSA-620-Week-12/blob/master/leaflet-shiny.png)

- [Shiny reference](http://shiny.rstudio.com/reference/shiny/1.0.5/)



# Assignment <a id="assignment"></a>

There are two assignments for this week.

The first is to submit a proposal for your final project, described in more detail [here](https://github.com/MUSA-620-Spring-2018/final-project).

The second assignment is to create a Shiny app that integrates data from PostGIS and displays it on a Leaflet map.

These assignments are **required**. Please turn them in by email to myself (galkamaxd at gmail) and Evan (ecernea at sas dot upenn dot edu).

**Due:** Wednesday, 18-April by 9am

### Description

In this course, we have now covered each of the steps in the pipeline approach to data: collection, storage, analysis, and visualization. This assignment is an exercise in integrating those steps within a single application.

The assignment is open ended, as long as your application meets these four criteria:
- It must be a Shiny application.
- The UI must include a Leaflet map.
- All data displayed on the map must be stored in and queried from a PostGIS database.
- The UI must be interactive. It must contain at least one widget that controls the map's style or what data is displayed.

### Deliverable

- A series of screenshots that show the map and demonstrate how user interaction changes its display.
- the server.r and ui.r scripts.
- the data from your PostGIS database in CSV format (you may exclude geometry columns).
- a written explanation of: the steps you took to create it, any challenges you encountered along the way.


