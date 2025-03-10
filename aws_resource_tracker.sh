#!/bin/bash

###############################################
# Author: Prasad
# Date: 21:02:2025
#Version: V1
#This script will report the AWS resource usuage
###############################################


# AWS S3
# AWS EC2
# AWS Lambda
# AWS IAM Users
set -x

echo "Fetching AWS Resource Information..."

#List S3 Buckets

aws s3 ls

#List EC2 Instances

aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceID'

#List AWS Lambda

aws lambda list-functions

#List AWS IAM users

aws iam list-users
