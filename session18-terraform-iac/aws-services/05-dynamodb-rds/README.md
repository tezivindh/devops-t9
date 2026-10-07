# AWS Database Services: DynamoDB & RDS Guide

## 1. Amazon DynamoDB (NoSQL)
- **What it is**: Fully managed, serverless, key-value and document NoSQL database delivering single-digit millisecond performance at any scale.
- **Data Model**:
  - **Tables**: Collections of data items.
  - **Items**: Groups of attributes (similar to a row in relational databases, but schema-less).
  - **Attributes**: Fundamental data elements (similar to columns).
- **Primary Keys**:
  - **Partition Key (Hash key)**: Determines physical partition distribution.
  - **Sort Key (Range key)**: Orders items within the partition.
- **Use Cases**: High-throughput session storage, gaming leaderboards, real-time event streaming.

---

## 2. Amazon RDS (Relational Database Service)
- **What it is**: Managed relational database service that simplifies provisioning, patching, backup, recovery, and scaling.
- **Supported Engines**: PostgreSQL, MySQL, MariaDB, Oracle, SQL Server, and Amazon Aurora.
- **Key Features**:
  - **Multi-AZ Deployments**: Synchronous replication to a standby instance in a different AZ for automated failover.
  - **Read Replicas**: Asynchronous replicas offloading read workloads.
  - **Automated Backups & Snapshots**: Point-in-time recovery to any second within the retention window.
