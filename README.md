# Apache Traffic Server

> Docker image for Apache Traffic Server

## Configuration

**Environment variables**

`TS_PORT` (default to `8080`) This configures Traffic Server to bind itself to this port for HTTP traffic.

`TS_STORAGE_SIZE` (default to `256M`) Disk cache size

Every records.config configuration variable can be overridden by a corresponding environment variable. The override variable is formed by converting the `records.config` variable name to upper case, and replacing any dot separators with an underscore.

Overriding a variable from the environment is permanent and will not be affected by future configuration changes made in records.config or applied with `traffic_ctl`.
