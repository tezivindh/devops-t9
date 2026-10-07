# AWS IAM (Identity and Access Management) Guide

## 1. What is IAM?
AWS Identity and Access Management (IAM) is a web service that helps you securely control access to AWS resources. It provides authentication (who you are) and authorization (what you can do).

## 2. Core Components
- **Users**: Persistent identities representing a specific person or application requiring direct AWS access.
- **Groups**: Collections of users sharing the same security permissions (e.g., `DevOpsAdmins`, `Developers`).
- **Roles**: Temporary identities assumable by users, applications, or AWS services (e.g., an EC2 instance assuming an S3-read role without hardcoded credentials).
- **Policies**: JSON documents defining explicit `Allow` or `Deny` permissions across Actions and Resources.
- **Permissions Boundary**: An advanced feature that sets the maximum permissions an identity-based policy can grant.

## 3. Best Practices
- Enforce **Principle of Least Privilege**: Grant only permissions necessary to perform the task.
- Enforce Multi-Factor Authentication (MFA) on root and privileged accounts.
- Rotate access keys regularly; prefer IAM Roles over long-lived access keys.
