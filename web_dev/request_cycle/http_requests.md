What are some common HTTP status codes?
404 - the resource you're trying to access cannot be found
403 - machine trying to access the resource is forbidden from doing so
200 - everything is all good, can connect without issue!
503 - web server you're trying to access is currently unavailable

I also learned that you can get a general idea of status code meanings depending on the number they start with: 1xx are informational, 2xx are success, 3xx are redirection, 4xx are client errors, and 5xx are server errors

What is the difference between a GET request and a POST request? When might each be used?
A GET request is used for viewing information, whereas a POST request is used for changing something. An example I saw was using a POST request if you're giving the user a form to change their password, and using a GET request for something like a seachpage or a homepage.

What is a cookie? How does it relate to HTTP requests?
Cookies are small pieces of data sent from the server to the user's web browser. They allow for saving small pieces of information to help identify whether requests to the server are coming from the same user's web browser, or a different one entirely. Without cookies, you would likely have to log in each time you visit a new webpage within the server, or you would have to fill your shopping cart and pay for the items in the cart all in one fell swoop. 
From the MDN, here are the 3 main usages of cookies: Session management (loggin in), personalization (preferences/settings), and tracking (user behavior). 
