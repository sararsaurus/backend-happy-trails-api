# README

# SomeTrails (backend)

Welcome to the backend for SomeTrails!

SomeTrails is a one-stop prep shop for wilderness patrol volunteers. The backend's schema features a join table for scheduled patrols, and it primarily serves to amalgamate various streams of information that translate on the frontend into a user-friendly compilation. Its authentication restricts what different visitors to the site can see and do.

The backend is designed to accomodate my growth as a developer: it includes some hardcoded data but is structured so that it can easily be replaced by more sophisticated sources as I learn. For example, I initally hardcoded the weather and daylight information, and I've since replaced that data and amended those controllers to call back to separate external APIs.

This project is locally hosted, and the backend pairs with [this frontend](https://github.com/sararsaurus/frontend-happy-trails).

## Dependencies, frameworks, libraries & APIs

- Ruby 3.1.2
- Rails 7.0.4
- [SunriseSunset.io](https://sunrisesunset.io/api/)
- [NWS API](https://www.weather.gov/documentation/services-web-api)

## Installation

Please note that the JWT authentication will require further information from me to make it work. If you have that info...

```bash
bundle install
rails db:create db:migrate db:seed
```

## Usage

```bash
rails server
```

You can test web requests as documented in the `requests.http` file.

## Roadmap

- Replace hardcoded trail conditions information with ethically scraped data
- Replace hardcoded trails with automatically generated trails
