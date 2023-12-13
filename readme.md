# DSHBRD

My personal dashboard that I would check every morning with my 1st coffee. These are areas / ionformation that I would like to see in my dashboard:

* Emails:
  * No of emails in my Inbox, as a graph over time. With the unread ones highlighted.
  * The top 5 email senders in my inbox and their last 5 emails.
* My MacBooks hardDrive:
  * Free space on my MacBooks harddrive 
  * 5 biggest directories / files.
  * No of iles
* Cash on my bank acount with a graph over time.
* Value of my stocks, with a graph over time.
* More ideas will follow...


## Architecture

I do this in order to play around with new tech 😀. This is whatr I want to use:

* Prometheus to collect & store the data based on HTTP pulls
* influxDB to collect time series that are pushed to it (i.e. from a batch file that pings)
* Grafana to show beautiful graphs
* Docker to run the different components
* Start with everything running locally

## Problems / Learnings / Thoughts

### Cannot ping Google from Docker container 

From within a docker container (in my case the `network-test` docker) the ping command doesn't work: As the docker network runs within a VM on the Mac, the return of the ping is not NATted back to the issuing container. 

I couldn't find a solution to this, so the network test scripts have to run directly on the Mac...