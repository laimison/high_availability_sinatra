# The plan for auto-scaling the app #

## Tasks ##
- understand the app
- choose tools for scaling
- come up with a plan to configure auto-scaling when traffic increases the response times of the app remain stable
- explain how your plan will ensure consistent response times in response to increase / decrease in traffic to the app.
- user friendly documentation

## Tools chosen to scale application ##
The task was successfully done using Amazon Cloud Services in AWS Elastic Beanstalk environment. 

## Are there any steps done outside of these scripts in zip? ##
Yes, it was needed to start new Elastic Beanstalk environment on AWS portal and choose "Web server" environment, "High availability" settings, SSD disk space in GB, SSH key to have the access to instances, configure scaling parameters, change load balancer port, add firewall rule by using Security Groups, use "eb" command line to deploy the code and some debugging until app and provided scripts worked as expected.

## Additional tools chosen to increase performance ##
- Nginx server is placed before this application for caching (it can keep some pages in memory and load quicker) 
- This Sinatra application switched from TCP/IP to Unix socket (basically, it removes unnecessary network layer so performance is slightly increased)

## Is there an practical example of this exact task deployed? ##
Available at [http://scalingsinatra.us-west-2.elasticbeanstalk.com](http://scalingsinatra.us-west-2.elasticbeanstalk.com) until the end of July, 2018

## Describe how it works? ##
It was fully configured and tested. It was created from exactly the same code in this zip.
I decided to use "NetworkOut" trigger for auto-scaling. It adds more instances when network load is higher which seems sensible to me for a very simple app like this.
This page should have 2 instances running when there are no visitors (no load).
When page is refreshed at least 10 times (20 KB are downloaded), auto-scaling adds more instances in 5 to 10 minutes. So in total it could have 8 instances added.

## How these tools can handle extremely high load? ##
In the real world, trigger should be increased and suited for a specific application. It depends a lot on it. Also, monitoring can be used to understand application behaviour with alerting if somethign is not expected, then settings improved.
Using these tools, it takes couple of minutes to manipulate with scaling parameters in real time based on network usage, cpu usage, ram usage and other paramters. They are triggered in X minutes when load is increased.
