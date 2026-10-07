# AWS S3 (Simple Storage Service) Guide

## 1. What is S3?
Amazon S3 is an object storage service offering industry-leading scalability, data availability, security, and performance.

## 2. Core Concepts
- **Buckets**: Globally unique top-level containers for storing objects.
- **Objects**: Fundamental entities stored consisting of file data and key-value metadata.
- **Storage Classes**: S3 Standard, S3 Intelligent-Tiering, S3 Standard-IA, S3 One Zone-IA, S3 Glacier Instant/Flexible/Deep Archive.
- **Versioning**: Preserves, retrieves, and restores every version of every object stored to protect against accidental deletes.
- **Lifecycle Policies**: Automated rules to transition objects to cheaper storage classes or expire them after defined timeframes.
- **Encryption**: Server-Side Encryption (SSE-S3, SSE-KMS, SSE-C) protecting data at rest.
- **Bucket Policies**: IAM JSON policies attached directly to buckets controlling access across principals and IP CIDRs.
