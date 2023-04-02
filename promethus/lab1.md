# Lab 1
![prometheusArch](https://user-images.githubusercontent.com/28235504/229347919-ef4c5b9b-e6cf-4894-b9c2-fcd7d0ea68d0.png)

## 1-what is differnect http status code and explain meaning of each of them ?
 - three-digit numbers returned by a server in response to a client's request to indicate the status of the requested resource or action.
    - 1xx (Informational): The server has received the request and is continuing to process it.
    - 2xx (Successful): The request was successfully received, understood, and accepted.
    - 3xx (Redirection): The requested resource has been moved or is temporarily unavailable, and the client should take additional action to complete the request.
    - 4xx (Client Error): The server cannot process the request due to a client error, such as a malformed request or authentication failure.
    - 5xx (Server Error): The server encountered an error while processing the request.

## 2-What database is used by Prometheus?
 - Prometheus uses its own custom time-series database, designed for storing and querying ``` time-series data ``` . The database is optimized for performance and scalability, and can handle large amounts of data with high write and query throughput. The data is stored in a compressed and efficient format, and is automatically purged over time. Prometheus also provides a query language, ``` called PromQL ```, for easy analysis of time-series data.
 
##  3-what is the differnece between different metrics types ( counter , gauge , histogram)
 - metrics used to collect and analyze data from different systems and applications. Here are some of the most common types:
    - Counter: A counter is a monotonically increasing value that counts the number of times an event has occurred, such as the number of requests or errors.
    - Gauge: A gauge is a value that can increase or decrease over time, such as the amount of CPU usage or memory consumption.
    - Histogram: A histogram is a way to track the distribution of values in a dataset, such as the response time of a web application.
    - Summary: A summary is similar to a histogram, but it also provides quantiles that can help identify outliers or unusual values in the dataset.
 
## 4-install prometheus on your localhost or on server in any cloud provider 
 
## 5-add any new target to prometheus.yaml file and apply any query on it using promql langauge 
 
