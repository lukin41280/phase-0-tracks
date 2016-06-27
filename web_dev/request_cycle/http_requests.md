# HTTP Requests

#### 2) What are some common HTTP status codes?

200 - "ok", 300 - "multiple choices", 403 - "forbidden access", 404 - "not found"
500 - "internal server error", 503 - "service unavailable"

#### 3) What is difference between a GET request and a POST request?  When might each be used?

GET is requesting data from a server.  POST is submitting data to be processed by a server.
GET is a bit unsafe because the request is listed in the URL.  It is meant to merely send
information back to the user.  POST is used when a user submits specific data like a 
username and password.  These items are not listed in the URL and are more protected.

#### 4) What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

Cookies are messages that are sent to the user's browser from the server.  The cookie is stored in
the browser for later use.  They are mainly used for servers to remember who you are if you visit
the site frequently.  Servers have no memory of its users so the cookie is used to overcome this.  
This can create a customizable experience for the user (mentioning the users name as a welcome messsage,
displaying favorite news articles on a news site, giving the temperature for the zip code the user is in, etc)  