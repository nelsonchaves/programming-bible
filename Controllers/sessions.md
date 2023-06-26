# Sessions
- Sessions are used to persist data from one request to another because each new request has no knowledge about previous request. So when you navigate from one page to the next, rails treats both request as two totally different requests. Like it sees both of them for the first time and it's through these sessions and more specifically the sessions data that rails can recognize who you are and respond accordingly.
- By default rails uses browser cookies to store your sessions data, but the data is encrypted. So no one can see the contents of the cookie except for your rails app.
- The session data doesn't have to be stored in a cookie. It could be the database or the rails cache or a key Value Store like _redis_ and so on
- You can read and write to the session by using the session method. 
