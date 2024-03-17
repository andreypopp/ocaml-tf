(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_sql_database_instance__clone = {
  allocated_ip_range : string option; [@option]
      (** The name of the allocated ip range for the private ip CloudSQL instance. For example: google-managed-services-default. If set, the cloned instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])?. *)
  database_names : string list option; [@option]
      (** (SQL Server only, use with point_in_time) clone only the specified databases from the source instance. Clone all databases if empty. *)
  point_in_time : string option; [@option]
      (** The timestamp of the point in time that should be restored. *)
  preferred_zone : string option; [@option]
      (** (Point-in-time recovery for PostgreSQL only) Clone to an instance in the specified zone. If no zone is specified, clone to the same zone as the source instance. *)
  source_instance_name : string;
      (** The name of the instance from which the point in time should be restored. *)
}
[@@deriving yojson_of]
(** Configuration for creating a new instance as a clone of another instance. *)

type google_sql_database_instance__replica_configuration = {
  ca_certificate : string option; [@option]
      (** PEM representation of the trusted CA's x509 certificate. *)
  client_certificate : string option; [@option]
      (** PEM representation of the replica's x509 certificate. *)
  client_key : string option; [@option]
      (** PEM representation of the replica's private key. The corresponding public key in encoded in the client_certificate. *)
  connect_retry_interval : float option; [@option]
      (** The number of seconds between connect retries. MySQL's default is 60 seconds. *)
  dump_file_path : string option; [@option]
      (** Path to a SQL file in Google Cloud Storage from which replica instances are created. Format is gs://bucket/filename. *)
  failover_target : bool option; [@option]
      (** Specifies if the replica is the failover target. If the field is set to true the replica will be designated as a failover replica. If the master instance fails, the replica instance will be promoted as the new master instance. Not supported for Postgres *)
  master_heartbeat_period : float option; [@option]
      (** Time in ms between replication heartbeats. *)
  password : string option; [@option]
      (** Password for the replication connection. *)
  ssl_cipher : string option; [@option]
      (** Permissible ciphers for use in SSL encryption. *)
  username : string option; [@option]
      (** Username for replication connection. *)
  verify_server_certificate : bool option; [@option]
      (** True if the master's common name value is checked during the SSL handshake. *)
}
[@@deriving yojson_of]
(** The configuration for replication. *)

type google_sql_database_instance__restore_backup_context = {
  backup_run_id : float;
      (** The ID of the backup run to restore from. *)
  instance_id : string option; [@option]
      (** The ID of the instance that the backup was taken from. *)
  project : string option; [@option]
      (** The full project ID of the source instance. *)
}
[@@deriving yojson_of]
(** google_sql_database_instance__restore_backup_context *)

type google_sql_database_instance__settings__active_directory_config = {
  domain : string;
      (** Domain name of the Active Directory for SQL Server (e.g., mydomain.com). *)
}
[@@deriving yojson_of]
(** google_sql_database_instance__settings__active_directory_config *)

type google_sql_database_instance__settings__advanced_machine_features = {
  threads_per_core : float option; [@option]
      (** The number of threads per physical core. Can be 1 or 2. *)
}
[@@deriving yojson_of]
(** google_sql_database_instance__settings__advanced_machine_features *)

type google_sql_database_instance__settings__backup_configuration__backup_retention_settings = {
  retained_backups : float;  (** Number of backups to retain. *)
  retention_unit : string option; [@option]
      (** The unit that 'retainedBackups' represents. Defaults to COUNT *)
}
[@@deriving yojson_of]
(** google_sql_database_instance__settings__backup_configuration__backup_retention_settings *)

type google_sql_database_instance__settings__backup_configuration = {
  binary_log_enabled : bool option; [@option]
      (** True if binary logging is enabled. If settings.backup_configuration.enabled is false, this must be as well. Can only be used with MySQL. *)
  enabled : bool option; [@option]
      (** True if backup configuration is enabled. *)
  location : string option; [@option]
      (** Location of the backup configuration. *)
  point_in_time_recovery_enabled : bool option; [@option]
      (** True if Point-in-time recovery is enabled. *)
  start_time : string option; [@option]
      (** HH:MM format time indicating when backup configuration starts. *)
  transaction_log_retention_days : float option; [@option]
      (** The number of days of transaction logs we retain for point in time restore, from 1-7. (For PostgreSQL Enterprise Plus instances, from 1 to 35.) *)
  backup_retention_settings :
    google_sql_database_instance__settings__backup_configuration__backup_retention_settings
    list;
}
[@@deriving yojson_of]
(** google_sql_database_instance__settings__backup_configuration *)

type google_sql_database_instance__settings__data_cache_config = {
  data_cache_enabled : bool option; [@option]
      (** Whether data cache is enabled for the instance. *)
}
[@@deriving yojson_of]
(** Data cache configurations. *)

type google_sql_database_instance__settings__database_flags = {
  name : string;  (** Name of the flag. *)
  value : string;  (** Value of the flag. *)
}
[@@deriving yojson_of]
(** google_sql_database_instance__settings__database_flags *)

type google_sql_database_instance__settings__deny_maintenance_period = {
  end_date : string;
      (** End date before which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01 *)
  start_date : string;
      (** Start date after which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01 *)
  time : string;
      (** Time in UTC when the deny maintenance period starts on start_date and ends on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00 *)
}
[@@deriving yojson_of]
(** google_sql_database_instance__settings__deny_maintenance_period *)

type google_sql_database_instance__settings__insights_config = {
  query_insights_enabled : bool option; [@option]
      (** True if Query Insights feature is enabled. *)
  query_plans_per_minute : float option; [@option]
      (** Number of query execution plans captured by Insights per minute for all queries combined. Between 0 and 20. Default to 5. *)
  query_string_length : float option; [@option]
      (** Maximum query length stored in bytes. Between 256 and 4500. Default to 1024. *)
  record_application_tags : bool option; [@option]
      (** True if Query Insights will record application tags from query when enabled. *)
  record_client_address : bool option; [@option]
      (** True if Query Insights will record client address when enabled. *)
}
[@@deriving yojson_of]
(** Configuration of Query Insights. *)

type google_sql_database_instance__settings__ip_configuration__authorized_networks = {
  expiration_time : string option; [@option]  (** expiration_time *)
  name : string option; [@option]  (** name *)
  value : string;  (** value *)
}
[@@deriving yojson_of]
(** google_sql_database_instance__settings__ip_configuration__authorized_networks *)

type google_sql_database_instance__settings__ip_configuration__psc_config = {
  allowed_consumer_projects : string list option; [@option]
      (** List of consumer projects that are allow-listed for PSC connections to this instance. This instance can be connected to with PSC from any network in these projects. Each consumer project in this list may be represented by a project number (numeric) or by a project id (alphanumeric). *)
  psc_enabled : bool option; [@option]
      (** Whether PSC connectivity is enabled for this instance. *)
}
[@@deriving yojson_of]
(** PSC settings for a Cloud SQL instance. *)

type google_sql_database_instance__settings__ip_configuration = {
  allocated_ip_range : string option; [@option]
      (** The name of the allocated ip range for the private ip CloudSQL instance. For example: google-managed-services-default. If set, the instance ip will be created in the allocated range. The range name must comply with RFC 1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])?. *)
  enable_private_path_for_google_cloud_services : bool option;
      [@option]
      (** Whether Google Cloud services such as BigQuery are allowed to access data in this Cloud SQL instance over a private IP connection. SQLSERVER database type is not supported. *)
  ipv4_enabled : bool option; [@option]
      (** Whether this Cloud SQL instance should be assigned a public IPV4 address. At least ipv4_enabled must be enabled or a private_network must be configured. *)
  private_network : string option; [@option]
      (** The VPC network from which the Cloud SQL instance is accessible for private IP. For example, projects/myProject/global/networks/default. Specifying a network enables private IP. At least ipv4_enabled must be enabled or a private_network must be configured. This setting can be updated, but it cannot be removed after it is set. *)
  require_ssl : bool option; [@option]
      (** Whether SSL connections over IP are enforced or not. To change this field, also set the corresponding value in ssl_mode if it has been set too. *)
  ssl_mode : string option; [@option]
      (** Specify how SSL connection should be enforced in DB connections. This field provides more SSL enforcment options compared to require_ssl. To change this field, also set the correspoding value in require_ssl. *)
  authorized_networks :
    google_sql_database_instance__settings__ip_configuration__authorized_networks
    list;
  psc_config :
    google_sql_database_instance__settings__ip_configuration__psc_config
    list;
}
[@@deriving yojson_of]
(** google_sql_database_instance__settings__ip_configuration *)

type google_sql_database_instance__settings__location_preference = {
  follow_gae_application : string option; [@option]
      (** A Google App Engine application whose zone to remain in. Must be in the same region as this instance. *)
  secondary_zone : string option; [@option]
      (** The preferred Compute Engine zone for the secondary/failover *)
  zone : string option; [@option]
      (** The preferred compute engine zone. *)
}
[@@deriving yojson_of]
(** google_sql_database_instance__settings__location_preference *)

type google_sql_database_instance__settings__maintenance_window = {
  day : float option; [@option]
      (** Day of week (1-7), starting on Monday *)
  hour : float option; [@option]
      (** Hour of day (0-23), ignored if day not set *)
  update_track : string option; [@option]
      (** Receive updates earlier (canary) or later (stable) *)
}
[@@deriving yojson_of]
(** Declares a one-hour maintenance window when an Instance can automatically restart to apply updates. The maintenance window is specified in UTC time. *)

type google_sql_database_instance__settings__password_validation_policy = {
  complexity : string option; [@option]  (** Password complexity. *)
  disallow_username_substring : bool option; [@option]
      (** Disallow username as a part of the password. *)
  enable_password_policy : bool;
      (** Whether the password policy is enabled or not. *)
  min_length : float option; [@option]
      (** Minimum number of characters allowed. *)
  password_change_interval : string option; [@option]
      (** Minimum interval after which the password can be changed. This flag is only supported for PostgresSQL. *)
  reuse_interval : float option; [@option]
      (** Number of previous passwords that cannot be reused. *)
}
[@@deriving yojson_of]
(** google_sql_database_instance__settings__password_validation_policy *)

type google_sql_database_instance__settings__sql_server_audit_config = {
  bucket : string option; [@option]
      (** The name of the destination bucket (e.g., gs://mybucket). *)
  retention_interval : string option; [@option]
      (** How long to keep generated audit files. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s.. *)
  upload_interval : string option; [@option]
      (** How often to upload generated audit files. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
}
[@@deriving yojson_of]
(** google_sql_database_instance__settings__sql_server_audit_config *)

type google_sql_database_instance__settings = {
  activation_policy : string option; [@option]
      (** This specifies when the instance should be active. Can be either ALWAYS, NEVER or ON_DEMAND. *)
  availability_type : string option; [@option]
      (** The availability type of the Cloud SQL instance, high availability
(REGIONAL) or single zone (ZONAL). For all instances, ensure that
settings.backup_configuration.enabled is set to true.
For MySQL instances, ensure that settings.backup_configuration.binary_log_enabled is set to true.
For Postgres instances, ensure that settings.backup_configuration.point_in_time_recovery_enabled
is set to true. Defaults to ZONAL. *)
  collation : string option; [@option]
      (** The name of server instance collation. *)
  connector_enforcement : string option; [@option]
      (** Specifies if connections must use Cloud SQL connectors. *)
  deletion_protection_enabled : bool option; [@option]
      (** Configuration to protect against accidental instance deletion. *)
  disk_autoresize : bool option; [@option]
      (** Enables auto-resizing of the storage size. Defaults to true. *)
  disk_autoresize_limit : float option; [@option]
      (** The maximum size, in GB, to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit. *)
  disk_size : float option; [@option]
      (** The size of data disk, in GB. Size of a running instance cannot be reduced but can be increased. The minimum value is 10GB. *)
  disk_type : string option; [@option]
      (** The type of data disk: PD_SSD or PD_HDD. Defaults to PD_SSD. *)
  edition : string option; [@option]
      (** The edition of the instance, can be ENTERPRISE or ENTERPRISE_PLUS. *)
  pricing_plan : string option; [@option]
      (** Pricing plan for this instance, can only be PER_USE. *)
  tier : string;
      (** The machine type to use. See tiers for more details and supported versions. Postgres supports only shared-core machine types, and custom machine types such as db-custom-2-13312. See the Custom Machine Type Documentation to learn about specifying custom machine types. *)
  time_zone : string option; [@option]
      (** The time_zone to be used by the database engine (supported only for SQL Server), in SQL Server timezone format. *)
  user_labels : (string * string) list option; [@option]
      (** A set of key/value user label pairs to assign to the instance. *)
  version : float;
      (** Used to make sure changes to the settings block are atomic. *)
  active_directory_config :
    google_sql_database_instance__settings__active_directory_config
    list;
  advanced_machine_features :
    google_sql_database_instance__settings__advanced_machine_features
    list;
  backup_configuration :
    google_sql_database_instance__settings__backup_configuration list;
  data_cache_config :
    google_sql_database_instance__settings__data_cache_config list;
  database_flags :
    google_sql_database_instance__settings__database_flags list;
  deny_maintenance_period :
    google_sql_database_instance__settings__deny_maintenance_period
    list;
  insights_config :
    google_sql_database_instance__settings__insights_config list;
  ip_configuration :
    google_sql_database_instance__settings__ip_configuration list;
  location_preference :
    google_sql_database_instance__settings__location_preference list;
  maintenance_window :
    google_sql_database_instance__settings__maintenance_window list;
  password_validation_policy :
    google_sql_database_instance__settings__password_validation_policy
    list;
  sql_server_audit_config :
    google_sql_database_instance__settings__sql_server_audit_config
    list;
}
[@@deriving yojson_of]
(** The settings to use for the database. The configuration is detailed below. *)

type google_sql_database_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_sql_database_instance__timeouts *)

type google_sql_database_instance__ip_address = {
  ip_address : string;  (** ip_address *)
  time_to_retire : string;  (** time_to_retire *)
  type_ : string; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type google_sql_database_instance__server_ca_cert = {
  cert : string;  (** cert *)
  common_name : string;  (** common_name *)
  create_time : string;  (** create_time *)
  expiration_time : string;  (** expiration_time *)
  sha1_fingerprint : string;  (** sha1_fingerprint *)
}
[@@deriving yojson_of]

type google_sql_database_instance = {
  database_version : string;
      (** The MySQL, PostgreSQL or SQL Server (beta) version to use. Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, SQLSERVER_2017_STANDARD, SQLSERVER_2017_ENTERPRISE, SQLSERVER_2017_EXPRESS, SQLSERVER_2017_WEB. Database Version Policies includes an up-to-date reference of supported versions. *)
  deletion_protection : bool option; [@option]
      (** Used to block Terraform from deleting a SQL Instance. Defaults to true. *)
  root_password : string option; [@option]
      (** Initial root password. Required for MS SQL Server. *)
  clone : google_sql_database_instance__clone list;
  replica_configuration :
    google_sql_database_instance__replica_configuration list;
  restore_backup_context :
    google_sql_database_instance__restore_backup_context list;
  settings : google_sql_database_instance__settings list;
  timeouts : google_sql_database_instance__timeouts option;
}
[@@deriving yojson_of]
(** google_sql_database_instance *)

let google_sql_database_instance ?deletion_protection ?root_password
    ?timeouts ~database_version ~clone ~replica_configuration
    ~restore_backup_context ~settings __resource_id =
  let __resource_type = "google_sql_database_instance" in
  let __resource =
    {
      database_version;
      deletion_protection;
      root_password;
      clone;
      replica_configuration;
      restore_backup_context;
      settings;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_sql_database_instance __resource);
  ()
