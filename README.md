This is a sample project using Hoss integration platform to build a Quickbooks Online (QBO) integration that will copy QBO accounts data to a database table

## Overview
We use Hoss Integrate platform to create a white label integration to QBO that will sync data from QBO and keep it up to date when data changes in QBO.

This is different from using Zapier or other iPaSS is that it let users specify their Client ID & Client Secret

## Getting started
The project is deployed to heroku. To give it a try, go to https://arcane-mountain-26573.herokuapp.com/authorize?userId=<User ID>, replacing <User ID> with a unique identification of a user in your system

This will redirect you to go through Quickbooks online OAuth flow and once you authorize, the manifest will save access token and trigger an account sync that will sync QB accounts data to a database
  
## To do
- Store the latest sync timestamp and only query for changed data
- Handle webhook to keep data updated after the initial sync
- Move the initial sync process to a background process that listen to async queue like rabbitmq or redis
