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

sample API call:

[https://api.darksky.net/forecast/b00a90bce6b38bb89a38fcf23e9cfe9c/37.8267,-122.4233]

  - Liquid precipitation rate needed???

## Requests:
key (required)
latitutde (required)
longitude (required)
exclude=[currently,minutely,hourly,daily,alerts,flags]
  <- choose which to exclude, probably all except for "currently"

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

## uh...hm..?
The Forecast Data API supports HTTP compression. We heartily recommend using it, as it will make responses much smaller over the wire. To enable it, simply add an Accept-Encoding: gzip header to your request. (Most HTTP client libraries wrap this functionality for you, please consult your library’s documentation for details.)

## GEO

if ("geolocation" in navigator) {
  /* geolocation is available */

  var options = {
    enableHighAccuracy: true,
    timeout: 5000,
    maximumAge: 0
  };

  function success(pos) {
    var crd = pos.coords;

    console.log('Your current position is:');
    console.log(`Latitude : ${crd.latitude}`);
    console.log(`Longitude: ${crd.longitude}`);
    console.log(`More or less ${crd.accuracy} meters.`);
  }

  function error(err) {
    console.warn(`ERROR(${err.code}): ${err.message}`);
  }

  navigator.geolocation.getCurrentPosition(success, error, options);

} else {
  /* geolocation IS NOT available */
}

## auth

class User < ApplicationRecord
  has_secure_password
  validates :username, uniqueness: { case_sensitive: false }
end

[link](https://learn.co/tracks/module-4-web-development-immersive-2-1/auth/jwt-auth-in-rails/jwt-auth-rails)
