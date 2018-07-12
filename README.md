## Your task ##

This directory contains a web app. Your task is to imagine that this web app is
hosted in a familiar infrastructure that provides some mechanisms for
auto-scaling and come up with a plan to configure auto-scaling for this app to
ensure that when traffic increases the response times of the app remain stable.

We expect you to:

* Figure out how the app works.
* Choose a familiar hosting platform that supports auto-scaling.
* Decide how you would configure and plan for auto-scaling for this app.
* Write out your plan in YOUR_NOTES.md, explaining the specifics
  of your chosen infrastructure, the exact steps that you'll take and reasoning
  behind your decisions.
* Explain how your plan will ensure consistent response times in response to
  increase / decrease in traffic to the app.
* Make your plan clear for somebody who is not familiar with the hosting
  platform that you have chosen.

We don't expect you to:

* Change the app.
* Explain why you've chosen a particular hosting platform.
* Actually set up anything, although feel free to include any code /
  configuration with your plan.

Just to be clear: this is a writing task, not a coding challenge. The only
output we require is a YOUR_NOTES.md with a detailed outline of your plan,
anything else is optional. Please feel free to include any materials that you
think would make your plan easier to understand.

## About the app ##

The app is a dummy Ruby/Sinatra webapp. Provided it runs on localhost:4567 you
should be able to get this output:

```
% curl http://localhost:4567
Hello World!
```
