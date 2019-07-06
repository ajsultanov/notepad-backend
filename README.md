# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
* System dependencies
* Configuration
* Database creation
* Database initialization
* How to run the test suite
* Services (job queues, cache servers, search engines, etc.)
* Deployment instructions

# Dark sky:

Liquid precipitation rate needed???

## Requests
key (required)
latitutde (required)
longitude (required)
exclude=[currently,minutely,hourly,daily,alerts,flags]
  <- choose which to exclude, probably all except for currently

## default icons:
1. clear-day,
2. clear-night,
3. rain,
4. snow,
5. sleet,
6. wind,
7. fog,
8. cloudy,
9. partly-cloudy-day, or
10. partly-cloudy-night

## Optional response headers:
X-Forecast-API-Calls  - The number of API requests made by the given API key for today.
X-Response-Time       - The server-side response time of the request.

**always** check for presence of data before using it

## uh...?
The Forecast Data API supports HTTP compression. We heartily recommend using it, as it will make responses much smaller over the wire. To enable it, simply add an Accept-Encoding: gzip header to your request. (Most HTTP client libraries wrap this functionality for you, please consult your library’s documentation for details.)
