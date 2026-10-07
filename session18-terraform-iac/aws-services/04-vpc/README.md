# AWS VPC (Virtual Private Cloud) Guide

## 1. What is VPC?
Amazon Virtual Private Cloud (Amazon VPC) lets you launch AWS resources in a logically isolated virtual network that you define.

## 2. Core Concepts
- **CIDR Block**: Classless Inter-Domain Routing IP address allocation (e.g., `10.0.0.0/16`).
- **Subnets**: IP range segments inside a specific Availability Zone.
  - **Public Subnet**: Has a direct route to an Internet Gateway (`0.0.0.0/0 -> igw`).
  - **Private Subnet**: No direct route to the internet; accesses outbound internet via a NAT Gateway.
- **Internet Gateway (IGW)**: Horizontally scaled VPC component allowing bidirectional communication between VPC instances and the internet.
- **NAT Gateway**: Allows private subnet instances to make outbound requests to the internet without exposing them to inbound connections.
- **Route Tables**: Sets of rules (routes) determining where network traffic is directed.
- **Security Groups vs. Network ACLs**: Security Groups are stateful firewalls at the instance level; NACLs are stateless firewalls at the subnet level.
