# Hotwire
- In old Rails prior to hotwire a request comes in from the browser rails builds up an HTML page and then it sends it over to the browser, and this cycle repeats over and over again for each request it comes in to the application
- This way of building websites worked great a decade ago but things changed with the release of JavaScript based applications called _ Single Page Applications_.
- The way single page applications work is they render an initial page either by building the HTML with JavaScript or by fetching an initial HTML page from the server and then they can update the different parts of that page as needed and this is key because you no longer need to re-render the entire page on every small change.
- For example, you have a list of users and only one of them changes, it doesn't make sense to re-render the entire page because it takes a lot more time to do so.
- So instead, You can render just the item you want and the rest of the page stays the same.
- This is preferred because it's faster both in terms of how much data needs to be sent and received over the Internet and also in terms of user experience. The entire Application feels much more responsive to user interactions especially on mobile devices where connections to the Internet are not as fast so if you send full pages back-and-forth they feel very slow and unresponsive.

# Important Limitations
- You are no longer building 1 application, but 2. You're building the JavaScript application and the backend API
