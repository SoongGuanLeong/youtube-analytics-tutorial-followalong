# YouTube Analytics Streaming Pipeline

This data engineering project was built by following a tutorial by [CodeWithYu](https://youtu.be/0aqSjJ3-4NI?si=aeXUqwrEZKa0H767).
This project is a personal learning exercise. All code was written independently while referencing the tutorial.

## Overview

The project demonstrates how to build a real-time data pipeline that fetches video analytics from the YouTube Data API, processes the data using Kafka and ksqlDB, and sends alerts via a Telegram bot.

## Features

* Python script to fetch video metadata from the YouTube Data API:

  * Title
  * Thumbnail
  * Views
  * Likes
  * Comments
  * Favorites
* Kafka stack deployed with Docker Compose:

  * Zookeeper
  * Kafka Broker
  * Schema Registry
  * Kafka Connect
  * ksqlDB Server
  * Confluent Control Center
* Real-time stream processing with ksqlDB (streams and tables)
* Kafka HTTP Sink Connector (from Confluent Hub) to send notifications to a Telegram bot

## Technologies Used

* Python
* Docker & Docker Compose
* Apache Kafka (via Confluent Platform)
* ksqlDB
* Telegram Bot API
* YouTube Data API v3

## Architecture

1. Python script extracts video data from a YouTube playlist.
2. Data is sent to a Kafka topic.
3. ksqlDB processes the topic into materialized streams/tables.
4. An HTTP Sink Connector pushes selected data to a Telegram bot.

---
## System Architecture
![CodeWithU-video1 drawio](https://github.com/user-attachments/assets/c9939452-29ae-42f8-849b-e925c832fae3)
