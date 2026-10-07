# AWS EC2 (Elastic Compute Cloud) Guide

## 1. What is EC2?
Amazon Elastic Compute Cloud (Amazon EC2) provides scalable virtual computing capacity in the AWS Cloud, eliminating hardware investments.

## 2. Core Concepts
- **AMI (Amazon Machine Image)**: Pre-configured operating system template (Ubuntu, Amazon Linux, Windows) used to launch instances.
- **Instance Types**: Optimized hardware families (General Purpose `t3/m5`, Compute Optimized `c5`, Memory Optimized `r5`).
- **Key Pairs**: Asymmetric public/private key pairs used to securely SSH into Linux instances.
- **Security Groups**: Virtual firewalls controlling inbound and outbound network traffic at the instance level.
- **EBS (Elastic Block Store)**: Network-attached, persistent block storage volumes mounted to EC2 instances.
- **Public vs. Private IP**: Public IPs are routable on the internet; private IPs are internal to the VPC.
- **Instance Lifecycle**: Pending → Running → Stopping → Stopped → Terminated.
