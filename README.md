# Cloud CORPS Rating (higher is better)
34/50 - Suitable for Production use.

Cost: 2/10
This module has a focus on production concerns that result in a higher cost. It should not be used for cost-sensitive deployments.

Observability: 8/10
Logging is enabled.
Metrics are enabled.

Resilience: 10/10
s3 buckets are distributed across availability zones by default.
Replication is enabled.
Backups are enabled.

Performance: 6/10
Objects placed in this bucket will sit on standard storage for 30 days then be handled by s3 intelligent tiering.

Security: 8/10
Public access is disabled.
Encryption is enabled.