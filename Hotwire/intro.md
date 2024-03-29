# Single Page Applications
- In old Rails prior to _Hotwire_ a request comes in from the browser rails builds up an HTML page and then it sends it over to the browser, and this cycle repeats over and over again for each request it comes in to the application
- This way of building websites worked great a decade ago but things changed with the release of JavaScript based applications called _Single Page Applications_.
- The way single page applications work is they render an initial page either by building the HTML with JavaScript or by fetching an initial HTML page from the server and then they can update the different parts of that page as needed and this is key because you no longer need to re-render the entire page on every small change.
- For example, you have a list of users and only one of them changes, it doesn't make sense to re-render the entire page because it takes a lot more time to do so.
- So instead, You can render just the item you want and the rest of the page stays the same.
- This is preferred because it's faster both in terms of how much data needs to be sent and received over the Internet and also in terms of user experience. The entire Application feels much more responsive to user interactions especially on mobile devices where connections to the Internet are not as fast so if you send full pages back-and-forth they feel very slow and unresponsive.

# Important Limitations
- You are no longer building 1 application, but 2. You're building the JavaScript application and the backend API which provides data in JSON format for JavaScript application.
- That means a lot more work which means it's either more time consuming or more expensive because if you want to go faster you need a bigger team.
- This might work well for huge companies with unlimited budgets, but it doesn't work as well for smaller companies with limited budgets. And that's where Hotwire comes in to play. It's right there in the middle kind of like the best of both worlds

# Here's how Hotwire works at a High Level.
- You get an initial page rendered just like you would with either the old rails or the Spas but then instead of fetching JSON data from the server and building the HTML on the JavaScript side rails sends over a small fragment of HTML not the entire page, but this HTML fragment was built on the server side, not the client side. So there's no JSON data needed.
- This has a few advantages.
  - First, it allows you to build and maintain just one project instead of two which reduces the development time or the resources you need in half.
  - Second, it makes the page feel just as Snappy as a single page application because it's not doing the full page refresh on every request.

# But how does it do it?
In order to pull this off Hotwire is made up of four components: **Turbo Drive**, **Turbo Frames**, **Turbo Streams**, **Stimulus JS**.
