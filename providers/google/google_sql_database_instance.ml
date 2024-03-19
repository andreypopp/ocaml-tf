(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type clone = {
  allocated_ip_range : string prop option; [@option]
      (** The name of the allocated ip range for the private ip CloudSQL instance. For example: google-managed-services-default. If set, the cloned instance ip will be created in the allocated range. The range name must comply with [RFC 1035](https://tools.ietf.org/html/rfc1035). Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])?. *)
  database_names : string prop list option; [@option]
      (** (SQL Server only, use with point_in_time) clone only the specified databases from the source instance. Clone all databases if empty. *)
  point_in_time : string prop option; [@option]
      (** The timestamp of the point in time that should be restored. *)
  preferred_zone : string prop option; [@option]
      (** (Point-in-time recovery for PostgreSQL only) Clone to an instance in the specified zone. If no zone is specified, clone to the same zone as the source instance. *)
  source_instance_name : string prop;
      (** The name of the instance from which the point in time should be restored. *)
}
[@@deriving yojson_of]
(** Configuration for creating a new instance as a clone of another instance. *)

type replica_configuration = {
  ca_certificate : string prop option; [@option]
      (** PEM representation of the trusted CA's x509 certificate. *)
  client_certificate : string prop option; [@option]
      (** PEM representation of the replica's x509 certificate. *)
  client_key : string prop option; [@option]
      (** PEM representation of the replica's private key. The corresponding public key in encoded in the client_certificate. *)
  connect_retry_interval : float prop option; [@option]
      (** The number of seconds between connect retries. MySQL's default is 60 seconds. *)
  dump_file_path : string prop option; [@option]
      (** Path to a SQL file in Google Cloud Storage from which replica instances are created. Format is gs://bucket/filename. *)
  failover_target : bool prop option; [@option]
      (** Specifies if the replica is the failover target. If the field is set to true the replica will be designated as a failover replica. If the master instance fails, the replica instance will be promoted as the new master instance. Not supported for Postgres *)
  master_heartbeat_period : float prop option; [@option]
      (** Time in ms between replication heartbeats. *)
  password : string prop option; [@option]
      (** Password for the replication connection. *)
  ssl_cipher : string prop option; [@option]
      (** Permissible ciphers for use in SSL encryption. *)
  username : string prop option; [@option]
      (** Username for replication connection. *)
  verify_server_certificate : bool prop option; [@option]
      (** True if the master's common name value is checked during the SSL handshake. *)
}
[@@deriving yojson_of]
(** The configuration for replication. *)

type restore_backup_context = {
  backup_run_id : float prop;
      (** The ID of the backup run to restore from. *)
  instance_id : string prop option; [@option]
      (** The ID of the instance that the backup was taken from. *)
  project : string prop option; [@option]
      (** The full project ID of the source instance. *)
}
[@@deriving yojson_of]
(** restore_backup_context *)

type settings__active_directory_config = {
  domain : string prop;
      (** Domain name of the Active Directory for SQL Server (e.g., mydomain.com). *)
}
[@@deriving yojson_of]
(** settings__active_directory_config *)

type settings__advanced_machine_features = {
  threads_per_core : float prop option; [@option]
      (** The number of threads per physical core. Can be 1 or 2. *)
}
[@@deriving yojson_of]
(** settings__advanced_machine_features *)

type settings__backup_configuration__backup_retention_settings = {
  retained_backups : float prop;  (** Number of backups to retain. *)
  retention_unit : string prop option; [@option]
      (** The unit that 'retainedBackups' represents. Defaults to COUNT *)
}
[@@deriving yojson_of]
(** settings__backup_configuration__backup_retention_settings *)

type settings__backup_configuration = {
  binary_log_enabled : bool prop option; [@option]
      (** True if binary logging is enabled. If settings.backup_configuration.enabled is false, this must be as well. Can only be used with MySQL. *)
  enabled : bool prop option; [@option]
      (** True if backup configuration is enabled. *)
  location : string prop option; [@option]
      (** Location of the backup configuration. *)
  point_in_time_recovery_enabled : bool prop option; [@option]
      (** True if Point-in-time recovery is enabled. *)
  start_time : string prop option; [@option]
      (** HH:MM format time indicating when backup configuration starts. *)
  transaction_log_retention_days : float prop option; [@option]
      (** The number of days of transaction logs we retain for point in time restore, from 1-7. (For PostgreSQL Enterprise Plus instances, from 1 to 35.) *)
  backup_retention_settings :
    settings__backup_configuration__backup_retention_settings list;
}
[@@deriving yojson_of]
(** settings__backup_configuration *)

type settings__data_cache_config = {
  data_cache_enabled : bool prop option; [@option]
      (** Whether data cache is enabled for the instance. *)
}
[@@deriving yojson_of]
(** Data cache configurations. *)

type settings__database_flags = {
  name : string prop;  (** Name of the flag. *)
  value : string prop;  (** Value of the flag. *)
}
[@@deriving yojson_of]
(** settings__database_flags *)

type settings__deny_maintenance_period = {
  end_date : string prop;
      (** End date before which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01 *)
  start_date : string prop;
      (** Start date after which maintenance will not take place. The date is in format yyyy-mm-dd i.e., 2020-11-01, or mm-dd, i.e., 11-01 *)
  time : string prop;
      (** Time in UTC when the deny maintenance period starts on start_date and ends on end_date. The time is in format: HH:mm:SS, i.e., 00:00:00 *)
}
[@@deriving yojson_of]
(** settings__deny_maintenance_period *)

type settings__insights_config = {
  query_insights_enabled : bool prop option; [@option]
      (** True if Query Insights feature is enabled. *)
  query_plans_per_minute : float prop option; [@option]
      (** Number of query execution plans captured by Insights per minute for all queries combined. Between 0 and 20. Default to 5. *)
  query_string_length : float prop option; [@option]
      (** Maximum query length stored in bytes. Between 256 and 4500. Default to 1024. *)
  record_application_tags : bool prop option; [@option]
      (** True if Query Insights will record application tags from query when enabled. *)
  record_client_address : bool prop option; [@option]
      (** True if Query Insights will record client address when enabled. *)
}
[@@deriving yojson_of]
(** Configuration of Query Insights. *)

type settings__ip_configuration__authorized_networks = {
  expiration_time : string prop option; [@option]
      (** expiration_time *)
  name : string prop option; [@option]  (** name *)
  value : string prop;  (** value *)
}
[@@deriving yojson_of]
(** settings__ip_configuration__authorized_networks *)

type settings__ip_configuration__psc_config = {
  allowed_consumer_projects : string prop list option; [@option]
      (** List of consumer projects that are allow-listed for PSC connections to this instance. This instance can be connected to with PSC from any network in these projects. Each consumer project in this list may be represented by a project number (numeric) or by a project id (alphanumeric). *)
  psc_enabled : bool prop option; [@option]
      (** Whether PSC connectivity is enabled for this instance. *)
}
[@@deriving yojson_of]
(** PSC settings for a Cloud SQL instance. *)

type settings__ip_configuration = {
  allocated_ip_range : string prop option; [@option]
      (** The name of the allocated ip range for the private ip CloudSQL instance. For example: google-managed-services-default. If set, the instance ip will be created in the allocated range. The range name must comply with RFC 1035. Specifically, the name must be 1-63 characters long and match the regular expression [a-z]([-a-z0-9]*[a-z0-9])?. *)
  enable_private_path_for_google_cloud_services : bool prop option;
      [@option]
      (** Whether Google Cloud services such as BigQuery are allowed to access data in this Cloud SQL instance over a private IP connection. SQLSERVER database type is not supported. *)
  ipv4_enabled : bool prop option; [@option]
      (** Whether this Cloud SQL instance should be assigned a public IPV4 address. At least ipv4_enabled must be enabled or a private_network must be configured. *)
  private_network : string prop option; [@option]
      (** The VPC network from which the Cloud SQL instance is accessible for private IP. For example, projects/myProject/global/networks/default. Specifying a network enables private IP. At least ipv4_enabled must be enabled or a private_network must be configured. This setting can be updated, but it cannot be removed after it is set. *)
  require_ssl : bool prop option; [@option]
      (** Whether SSL connections over IP are enforced or not. To change this field, also set the corresponding value in ssl_mode if it has been set too. *)
  ssl_mode : string prop option; [@option]
      (** Specify how SSL connection should be enforced in DB connections. This field provides more SSL enforcment options compared to require_ssl. To change this field, also set the correspoding value in require_ssl. *)
  authorized_networks :
    settings__ip_configuration__authorized_networks list;
  psc_config : settings__ip_configuration__psc_config list;
}
[@@deriving yojson_of]
(** settings__ip_configuration *)

type settings__location_preference = {
  follow_gae_application : string prop option; [@option]
      (** A Google App Engine application whose zone to remain in. Must be in the same region as this instance. *)
  secondary_zone : string prop option; [@option]
      (** The preferred Compute Engine zone for the secondary/failover *)
  zone : string prop option; [@option]
      (** The preferred compute engine zone. *)
}
[@@deriving yojson_of]
(** settings__location_preference *)

type settings__maintenance_window = {
  day : float prop option; [@option]
      (** Day of week (1-7), starting on Monday *)
  hour : float prop option; [@option]
      (** Hour of day (0-23), ignored if day not set *)
  update_track : string prop option; [@option]
      (** Receive updates earlier (canary) or later (stable) *)
}
[@@deriving yojson_of]
(** Declares a one-hour maintenance window when an Instance can automatically restart to apply updates. The maintenance window is specified in UTC time. *)

type settings__password_validation_policy = {
  complexity : string prop option; [@option]
      (** Password complexity. *)
  disallow_username_substring : bool prop option; [@option]
      (** Disallow username as a part of the password. *)
  enable_password_policy : bool prop;
      (** Whether the password policy is enabled or not. *)
  min_length : float prop option; [@option]
      (** Minimum number of characters allowed. *)
  password_change_interval : string prop option; [@option]
      (** Minimum interval after which the password can be changed. This flag is only supported for PostgresSQL. *)
  reuse_interval : float prop option; [@option]
      (** Number of previous passwords that cannot be reused. *)
}
[@@deriving yojson_of]
(** settings__password_validation_policy *)

type settings__sql_server_audit_config = {
  bucket : string prop option; [@option]
      (** The name of the destination bucket (e.g., gs://mybucket). *)
  retention_interval : string prop option; [@option]
      (** How long to keep generated audit files. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s.. *)
  upload_interval : string prop option; [@option]
      (** How often to upload generated audit files. A duration in seconds with up to nine fractional digits, terminated by 's'. Example: 3.5s. *)
}
[@@deriving yojson_of]
(** settings__sql_server_audit_config *)

type settings = {
  activation_policy : string prop option; [@option]
      (** This specifies when the instance should be active. Can be either ALWAYS, NEVER or ON_DEMAND. *)
  availability_type : string prop option; [@option]
      (** The availability type of the Cloud SQL instance, high availability
(REGIONAL) or single zone (ZONAL). For all instances, ensure that
settings.backup_configuration.enabled is set to true.
For MySQL instances, ensure that settings.backup_configuration.binary_log_enabled is set to true.
For Postgres instances, ensure that settings.backup_configuration.point_in_time_recovery_enabled
is set to true. Defaults to ZONAL. *)
  collation : string prop option; [@option]
      (** The name of server instance collation. *)
  connector_enforcement : string prop option; [@option]
      (** Specifies if connections must use Cloud SQL connectors. *)
  deletion_protection_enabled : bool prop option; [@option]
      (** Configuration to protect against accidental instance deletion. *)
  disk_autoresize : bool prop option; [@option]
      (** Enables auto-resizing of the storage size. Defaults to true. *)
  disk_autoresize_limit : float prop option; [@option]
      (** The maximum size, in GB, to which storage capacity can be automatically increased. The default value is 0, which specifies that there is no limit. *)
  disk_size : float prop option; [@option]
      (** The size of data disk, in GB. Size of a running instance cannot be reduced but can be increased. The minimum value is 10GB. *)
  disk_type : string prop option; [@option]
      (** The type of data disk: PD_SSD or PD_HDD. Defaults to PD_SSD. *)
  edition : string prop option; [@option]
      (** The edition of the instance, can be ENTERPRISE or ENTERPRISE_PLUS. *)
  pricing_plan : string prop option; [@option]
      (** Pricing plan for this instance, can only be PER_USE. *)
  tier : string prop;
      (** The machine type to use. See tiers for more details and supported versions. Postgres supports only shared-core machine types, and custom machine types such as db-custom-2-13312. See the Custom Machine Type Documentation to learn about specifying custom machine types. *)
  time_zone : string prop option; [@option]
      (** The time_zone to be used by the database engine (supported only for SQL Server), in SQL Server timezone format. *)
  user_labels : (string * string prop) list option; [@option]
      (** A set of key/value user label pairs to assign to the instance. *)
  active_directory_config : settings__active_directory_config list;
  advanced_machine_features :
    settings__advanced_machine_features list;
  backup_configuration : settings__backup_configuration list;
  data_cache_config : settings__data_cache_config list;
  database_flags : settings__database_flags list;
  deny_maintenance_period : settings__deny_maintenance_period list;
  insights_config : settings__insights_config list;
  ip_configuration : settings__ip_configuration list;
  location_preference : settings__location_preference list;
  maintenance_window : settings__maintenance_window list;
  password_validation_policy :
    settings__password_validation_policy list;
  sql_server_audit_config : settings__sql_server_audit_config list;
}
[@@deriving yojson_of]
(** The settings to use for the database. The configuration is detailed below. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type ip_address = {
  ip_address : string prop;  (** ip_address *)
  time_to_retire : string prop;  (** time_to_retire *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]

type server_ca_cert = {
  cert : string prop;  (** cert *)
  common_name : string prop;  (** common_name *)
  create_time : string prop;  (** create_time *)
  expiration_time : string prop;  (** expiration_time *)
  sha1_fingerprint : string prop;  (** sha1_fingerprint *)
}
[@@deriving yojson_of]

type google_sql_database_instance = {
  database_version : string prop;
      (** The MySQL, PostgreSQL or SQL Server (beta) version to use. Supported values include MYSQL_5_6, MYSQL_5_7, MYSQL_8_0, POSTGRES_9_6, POSTGRES_10, POSTGRES_11, POSTGRES_12, POSTGRES_13, POSTGRES_14, POSTGRES_15, SQLSERVER_2017_STANDARD, SQLSERVER_2017_ENTERPRISE, SQLSERVER_2017_EXPRESS, SQLSERVER_2017_WEB. Database Version Policies includes an up-to-date reference of supported versions. *)
  deletion_protection : bool prop option; [@option]
      (** Used to block Terraform from deleting a SQL Instance. Defaults to true. *)
  encryption_key_name : string prop option; [@option]
      (** encryption_key_name *)
  id : string prop option; [@option]  (** id *)
  instance_type : string prop option; [@option]
      (** The type of the instance. The valid values are:- 'SQL_INSTANCE_TYPE_UNSPECIFIED', 'CLOUD_SQL_INSTANCE', 'ON_PREMISES_INSTANCE' and 'READ_REPLICA_INSTANCE'. *)
  maintenance_version : string prop option; [@option]
      (** Maintenance version. *)
  master_instance_name : string prop option; [@option]
      (** The name of the instance that will act as the master in the replication setup. Note, this requires the master to have binary_log_enabled set, as well as existing backups. *)
  name : string prop option; [@option]
      (** The name of the instance. If the name is left blank, Terraform will randomly generate one when the instance is first created. This is done because after a name is used, it cannot be reused for up to one week. *)
  project : string prop option; [@option]
      (** The ID of the project in which the resource belongs. If it is not provided, the provider project is used. *)
  region : string prop option; [@option]
      (** The region the instance will sit in. Note, Cloud SQL is not available in all regions. A valid region must be provided to use this resource. If a region is not provided in the resource definition, the provider region will be used instead, but this will be an apply-time error for instances if the provider region is not supported with Cloud SQL. If you choose not to provide the region argument for this resource, make sure you understand this. *)
  root_password : string prop option; [@option]
      (** Initial root password. Required for MS SQL Server. *)
  clone : clone list;
  replica_configuration : replica_configuration list;
  restore_backup_context : restore_backup_context list;
  settings : settings list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_sql_database_instance *)

let clone ?allocated_ip_range ?database_names ?point_in_time
    ?preferred_zone ~source_instance_name () : clone =
  {
    allocated_ip_range;
    database_names;
    point_in_time;
    preferred_zone;
    source_instance_name;
  }

let replica_configuration ?ca_certificate ?client_certificate
    ?client_key ?connect_retry_interval ?dump_file_path
    ?failover_target ?master_heartbeat_period ?password ?ssl_cipher
    ?username ?verify_server_certificate () : replica_configuration =
  {
    ca_certificate;
    client_certificate;
    client_key;
    connect_retry_interval;
    dump_file_path;
    failover_target;
    master_heartbeat_period;
    password;
    ssl_cipher;
    username;
    verify_server_certificate;
  }

let restore_backup_context ?instance_id ?project ~backup_run_id () :
    restore_backup_context =
  { backup_run_id; instance_id; project }

let settings__active_directory_config ~domain () :
    settings__active_directory_config =
  { domain }

let settings__advanced_machine_features ?threads_per_core () :
    settings__advanced_machine_features =
  { threads_per_core }

let settings__backup_configuration__backup_retention_settings
    ?retention_unit ~retained_backups () :
    settings__backup_configuration__backup_retention_settings =
  { retained_backups; retention_unit }

let settings__backup_configuration ?binary_log_enabled ?enabled
    ?location ?point_in_time_recovery_enabled ?start_time
    ?transaction_log_retention_days ~backup_retention_settings () :
    settings__backup_configuration =
  {
    binary_log_enabled;
    enabled;
    location;
    point_in_time_recovery_enabled;
    start_time;
    transaction_log_retention_days;
    backup_retention_settings;
  }

let settings__data_cache_config ?data_cache_enabled () :
    settings__data_cache_config =
  { data_cache_enabled }

let settings__database_flags ~name ~value () :
    settings__database_flags =
  { name; value }

let settings__deny_maintenance_period ~end_date ~start_date ~time ()
    : settings__deny_maintenance_period =
  { end_date; start_date; time }

let settings__insights_config ?query_insights_enabled
    ?query_plans_per_minute ?query_string_length
    ?record_application_tags ?record_client_address () :
    settings__insights_config =
  {
    query_insights_enabled;
    query_plans_per_minute;
    query_string_length;
    record_application_tags;
    record_client_address;
  }

let settings__ip_configuration__authorized_networks ?expiration_time
    ?name ~value () : settings__ip_configuration__authorized_networks
    =
  { expiration_time; name; value }

let settings__ip_configuration__psc_config ?allowed_consumer_projects
    ?psc_enabled () : settings__ip_configuration__psc_config =
  { allowed_consumer_projects; psc_enabled }

let settings__ip_configuration ?allocated_ip_range
    ?enable_private_path_for_google_cloud_services ?ipv4_enabled
    ?private_network ?require_ssl ?ssl_mode ~authorized_networks
    ~psc_config () : settings__ip_configuration =
  {
    allocated_ip_range;
    enable_private_path_for_google_cloud_services;
    ipv4_enabled;
    private_network;
    require_ssl;
    ssl_mode;
    authorized_networks;
    psc_config;
  }

let settings__location_preference ?follow_gae_application
    ?secondary_zone ?zone () : settings__location_preference =
  { follow_gae_application; secondary_zone; zone }

let settings__maintenance_window ?day ?hour ?update_track () :
    settings__maintenance_window =
  { day; hour; update_track }

let settings__password_validation_policy ?complexity
    ?disallow_username_substring ?min_length
    ?password_change_interval ?reuse_interval ~enable_password_policy
    () : settings__password_validation_policy =
  {
    complexity;
    disallow_username_substring;
    enable_password_policy;
    min_length;
    password_change_interval;
    reuse_interval;
  }

let settings__sql_server_audit_config ?bucket ?retention_interval
    ?upload_interval () : settings__sql_server_audit_config =
  { bucket; retention_interval; upload_interval }

let settings ?activation_policy ?availability_type ?collation
    ?connector_enforcement ?deletion_protection_enabled
    ?disk_autoresize ?disk_autoresize_limit ?disk_size ?disk_type
    ?edition ?pricing_plan ?time_zone ?user_labels ~tier
    ~active_directory_config ~advanced_machine_features
    ~backup_configuration ~data_cache_config ~database_flags
    ~deny_maintenance_period ~insights_config ~ip_configuration
    ~location_preference ~maintenance_window
    ~password_validation_policy ~sql_server_audit_config () :
    settings =
  {
    activation_policy;
    availability_type;
    collation;
    connector_enforcement;
    deletion_protection_enabled;
    disk_autoresize;
    disk_autoresize_limit;
    disk_size;
    disk_type;
    edition;
    pricing_plan;
    tier;
    time_zone;
    user_labels;
    active_directory_config;
    advanced_machine_features;
    backup_configuration;
    data_cache_config;
    database_flags;
    deny_maintenance_period;
    insights_config;
    ip_configuration;
    location_preference;
    maintenance_window;
    password_validation_policy;
    sql_server_audit_config;
  }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_sql_database_instance ?deletion_protection
    ?encryption_key_name ?id ?instance_type ?maintenance_version
    ?master_instance_name ?name ?project ?region ?root_password
    ?timeouts ~database_version ~clone ~replica_configuration
    ~restore_backup_context ~settings () :
    google_sql_database_instance =
  {
    database_version;
    deletion_protection;
    encryption_key_name;
    id;
    instance_type;
    maintenance_version;
    master_instance_name;
    name;
    project;
    region;
    root_password;
    clone;
    replica_configuration;
    restore_backup_context;
    settings;
    timeouts;
  }

type t = {
  available_maintenance_versions : string list prop;
  connection_name : string prop;
  database_version : string prop;
  deletion_protection : bool prop;
  dns_name : string prop;
  encryption_key_name : string prop;
  first_ip_address : string prop;
  id : string prop;
  instance_type : string prop;
  ip_address : ip_address list prop;
  maintenance_version : string prop;
  master_instance_name : string prop;
  name : string prop;
  private_ip_address : string prop;
  project : string prop;
  psc_service_attachment_link : string prop;
  public_ip_address : string prop;
  region : string prop;
  root_password : string prop;
  self_link : string prop;
  server_ca_cert : server_ca_cert list prop;
  service_account_email_address : string prop;
}

let register ?tf_module ?deletion_protection ?encryption_key_name ?id
    ?instance_type ?maintenance_version ?master_instance_name ?name
    ?project ?region ?root_password ?timeouts ~database_version
    ~clone ~replica_configuration ~restore_backup_context ~settings
    __resource_id =
  let __resource_type = "google_sql_database_instance" in
  let __resource =
    google_sql_database_instance ?deletion_protection
      ?encryption_key_name ?id ?instance_type ?maintenance_version
      ?master_instance_name ?name ?project ?region ?root_password
      ?timeouts ~database_version ~clone ~replica_configuration
      ~restore_backup_context ~settings ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_sql_database_instance __resource);
  let __resource_attributes =
    ({
       available_maintenance_versions =
         Prop.computed __resource_type __resource_id
           "available_maintenance_versions";
       connection_name =
         Prop.computed __resource_type __resource_id
           "connection_name";
       database_version =
         Prop.computed __resource_type __resource_id
           "database_version";
       deletion_protection =
         Prop.computed __resource_type __resource_id
           "deletion_protection";
       dns_name =
         Prop.computed __resource_type __resource_id "dns_name";
       encryption_key_name =
         Prop.computed __resource_type __resource_id
           "encryption_key_name";
       first_ip_address =
         Prop.computed __resource_type __resource_id
           "first_ip_address";
       id = Prop.computed __resource_type __resource_id "id";
       instance_type =
         Prop.computed __resource_type __resource_id "instance_type";
       ip_address =
         Prop.computed __resource_type __resource_id "ip_address";
       maintenance_version =
         Prop.computed __resource_type __resource_id
           "maintenance_version";
       master_instance_name =
         Prop.computed __resource_type __resource_id
           "master_instance_name";
       name = Prop.computed __resource_type __resource_id "name";
       private_ip_address =
         Prop.computed __resource_type __resource_id
           "private_ip_address";
       project =
         Prop.computed __resource_type __resource_id "project";
       psc_service_attachment_link =
         Prop.computed __resource_type __resource_id
           "psc_service_attachment_link";
       public_ip_address =
         Prop.computed __resource_type __resource_id
           "public_ip_address";
       region = Prop.computed __resource_type __resource_id "region";
       root_password =
         Prop.computed __resource_type __resource_id "root_password";
       self_link =
         Prop.computed __resource_type __resource_id "self_link";
       server_ca_cert =
         Prop.computed __resource_type __resource_id "server_ca_cert";
       service_account_email_address =
         Prop.computed __resource_type __resource_id
           "service_account_email_address";
     }
      : t)
  in
  __resource_attributes
