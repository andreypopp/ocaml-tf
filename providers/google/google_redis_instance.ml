(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_redis_instance__maintenance_policy__weekly_maintenance_window__start_time = {
  hours : float prop option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23.
An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float prop option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float prop option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float prop option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59.
An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Required. Start time of the window in UTC time. *)

type google_redis_instance__maintenance_policy__weekly_maintenance_window = {
  day : string prop;
      (** Required. The day of week that maintenance updates occur.

- DAY_OF_WEEK_UNSPECIFIED: The day of the week is unspecified.
- MONDAY: Monday
- TUESDAY: Tuesday
- WEDNESDAY: Wednesday
- THURSDAY: Thursday
- FRIDAY: Friday
- SATURDAY: Saturday
- SUNDAY: Sunday Possible values: [DAY_OF_WEEK_UNSPECIFIED, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  duration : string prop;
      (** Output only. Duration of the maintenance window.
The current window is fixed at 1 hour.
A duration in seconds with up to nine fractional digits,
terminated by 's'. Example: 3.5s. *)
  start_time :
    google_redis_instance__maintenance_policy__weekly_maintenance_window__start_time
    list;
}
[@@deriving yojson_of]
(** Optional. Maintenance window that is applied to resources covered by this policy.
Minimum 1. For the current version, the maximum number
of weekly_window is expected to be one. *)

type google_redis_instance__maintenance_policy = {
  create_time : string prop;
      (** Output only. The time when the policy was created.
A timestamp in RFC3339 UTC Zulu format, with nanosecond
resolution and up to nine fractional digits. *)
  description : string prop option; [@option]
      (** Optional. Description of what this policy is for.
Create/Update methods return INVALID_ARGUMENT if the
length is greater than 512. *)
  update_time : string prop;
      (** Output only. The time when the policy was last updated.
A timestamp in RFC3339 UTC Zulu format, with nanosecond
resolution and up to nine fractional digits. *)
  weekly_maintenance_window :
    google_redis_instance__maintenance_policy__weekly_maintenance_window
    list;
}
[@@deriving yojson_of]
(** Maintenance policy for an instance. *)

type google_redis_instance__persistence_config = {
  persistence_mode : string prop option; [@option]
      (** Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.

- DISABLED: 	Persistence is disabled for the instance, and any existing snapshots are deleted.
- RDB: RDB based Persistence is enabled. Possible values: [DISABLED, RDB] *)
  rdb_next_snapshot_time : string prop;
      (** Output only. The next time that a snapshot attempt is scheduled to occur.
A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up
to nine fractional digits.
Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  rdb_snapshot_period : string prop option; [@option]
      (** Optional. Available snapshot periods for scheduling.

- ONE_HOUR:	Snapshot every 1 hour.
- SIX_HOURS:	Snapshot every 6 hours.
- TWELVE_HOURS:	Snapshot every 12 hours.
- TWENTY_FOUR_HOURS:	Snapshot every 24 hours. Possible values: [ONE_HOUR, SIX_HOURS, TWELVE_HOURS, TWENTY_FOUR_HOURS] *)
  rdb_snapshot_start_time : string prop option; [@option]
      (** Optional. Date and time that the first snapshot was/will be attempted,
and to which future snapshots will be aligned. If not provided,
the current time will be used.
A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution
and up to nine fractional digits.
Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
}
[@@deriving yojson_of]
(** Persistence configuration for an instance. *)

type google_redis_instance__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_redis_instance__timeouts *)

type google_redis_instance__maintenance_schedule = {
  end_time : string prop;  (** end_time *)
  schedule_deadline_time : string prop;
      (** schedule_deadline_time *)
  start_time : string prop;  (** start_time *)
}
[@@deriving yojson_of]

type google_redis_instance__nodes = {
  id : string prop;  (** id *)
  zone : string prop;  (** zone *)
}
[@@deriving yojson_of]

type google_redis_instance__server_ca_certs = {
  cert : string prop;  (** cert *)
  create_time : string prop;  (** create_time *)
  expire_time : string prop;  (** expire_time *)
  serial_number : string prop;  (** serial_number *)
  sha1_fingerprint : string prop;  (** sha1_fingerprint *)
}
[@@deriving yojson_of]

type google_redis_instance = {
  alternative_location_id : string prop option; [@option]
      (** Only applicable to STANDARD_HA tier which protects the instance
against zonal failures by provisioning it across two zones.
If provided, it must be a different zone from the one provided in
[locationId]. *)
  auth_enabled : bool prop option; [@option]
      (** Optional. Indicates whether OSS Redis AUTH is enabled for the
instance. If set to true AUTH is enabled on the instance.
Default value is false meaning AUTH is disabled. *)
  authorized_network : string prop option; [@option]
      (** The full name of the Google Compute Engine network to which the
instance is connected. If left unspecified, the default network
will be used. *)
  connect_mode : string prop option; [@option]
      (** The connection mode of the Redis instance. Default value: DIRECT_PEERING Possible values: [DIRECT_PEERING, PRIVATE_SERVICE_ACCESS] *)
  customer_managed_key : string prop option; [@option]
      (** Optional. The KMS key reference that you want to use to encrypt the data at rest for this Redis
instance. If this is provided, CMEK is enabled. *)
  display_name : string prop option; [@option]
      (** An arbitrary and optional user-provided name for the instance. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Resource labels to represent user provided metadata.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  location_id : string prop option; [@option]
      (** The zone where the instance will be provisioned. If not provided,
the service will choose a zone for the instance. For STANDARD_HA tier,
instances will be created across two zones for protection against
zonal failures. If [alternativeLocationId] is also provided, it must
be different from [locationId]. *)
  memory_size_gb : float prop;  (** Redis memory size in GiB. *)
  name : string prop;
      (** The ID of the instance or a fully qualified identifier for the instance. *)
  project : string prop option; [@option]  (** project *)
  read_replicas_mode : string prop option; [@option]
      (** Optional. Read replica mode. Can only be specified when trying to create the instance.
If not set, Memorystore Redis backend will default to READ_REPLICAS_DISABLED.
- READ_REPLICAS_DISABLED: If disabled, read endpoint will not be provided and the
instance cannot scale up or down the number of replicas.
- READ_REPLICAS_ENABLED: If enabled, read endpoint will be provided and the instance
can scale up and down the number of replicas. Possible values: [READ_REPLICAS_DISABLED, READ_REPLICAS_ENABLED] *)
  redis_configs : (string * string prop) list option; [@option]
      (** Redis configuration parameters, according to http://redis.io/topics/config.
Please check Memorystore documentation for the list of supported parameters:
https://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances#Instance.FIELDS.redis_configs *)
  redis_version : string prop option; [@option]
      (** The version of Redis software. If not provided, latest supported
version will be used. Please check the API documentation linked
at the top for the latest valid values. *)
  region : string prop option; [@option]
      (** The name of the Redis region of the instance. *)
  replica_count : float prop option; [@option]
      (** Optional. The number of replica nodes. The valid range for the Standard Tier with
read replicas enabled is [1-5] and defaults to 2. If read replicas are not enabled
for a Standard Tier instance, the only valid value is 1 and the default is 1.
The valid value for basic tier is 0 and the default is also 0. *)
  reserved_ip_range : string prop option; [@option]
      (** The CIDR range of internal addresses that are reserved for this
instance. If not provided, the service will choose an unused /29
block, for example, 10.0.0.0/29 or 192.168.0.0/29. Ranges must be
unique and non-overlapping with existing subnets in an authorized
network. *)
  secondary_ip_range : string prop option; [@option]
      (** Optional. Additional IP range for node placement. Required when enabling read replicas on
an existing instance. For DIRECT_PEERING mode value must be a CIDR range of size /28, or
auto. For PRIVATE_SERVICE_ACCESS mode value must be the name of an allocated address
range associated with the private service access connection, or auto. *)
  tier : string prop option; [@option]
      (** The service tier of the instance. Must be one of these values:

- BASIC: standalone instance
- STANDARD_HA: highly available primary/replica instances Default value: BASIC Possible values: [BASIC, STANDARD_HA] *)
  transit_encryption_mode : string prop option; [@option]
      (** The TLS mode of the Redis instance, If not provided, TLS is disabled for the instance.

- SERVER_AUTHENTICATION: Client to Server traffic encryption enabled with server authentication Default value: DISABLED Possible values: [SERVER_AUTHENTICATION, DISABLED] *)
  maintenance_policy :
    google_redis_instance__maintenance_policy list;
  persistence_config :
    google_redis_instance__persistence_config list;
  timeouts : google_redis_instance__timeouts option;
}
[@@deriving yojson_of]
(** google_redis_instance *)

type t = {
  alternative_location_id : string prop;
  auth_enabled : bool prop;
  auth_string : string prop;
  authorized_network : string prop;
  connect_mode : string prop;
  create_time : string prop;
  current_location_id : string prop;
  customer_managed_key : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  host : string prop;
  id : string prop;
  labels : (string * string) list prop;
  location_id : string prop;
  maintenance_schedule :
    google_redis_instance__maintenance_schedule list prop;
  memory_size_gb : float prop;
  name : string prop;
  nodes : google_redis_instance__nodes list prop;
  persistence_iam_identity : string prop;
  port : float prop;
  project : string prop;
  read_endpoint : string prop;
  read_endpoint_port : float prop;
  read_replicas_mode : string prop;
  redis_configs : (string * string) list prop;
  redis_version : string prop;
  region : string prop;
  replica_count : float prop;
  reserved_ip_range : string prop;
  secondary_ip_range : string prop;
  server_ca_certs : google_redis_instance__server_ca_certs list prop;
  terraform_labels : (string * string) list prop;
  tier : string prop;
  transit_encryption_mode : string prop;
}

let google_redis_instance ?alternative_location_id ?auth_enabled
    ?authorized_network ?connect_mode ?customer_managed_key
    ?display_name ?id ?labels ?location_id ?project
    ?read_replicas_mode ?redis_configs ?redis_version ?region
    ?replica_count ?reserved_ip_range ?secondary_ip_range ?tier
    ?transit_encryption_mode ?timeouts ~memory_size_gb ~name
    ~maintenance_policy ~persistence_config __resource_id =
  let __resource_type = "google_redis_instance" in
  let __resource =
    ({
       alternative_location_id;
       auth_enabled;
       authorized_network;
       connect_mode;
       customer_managed_key;
       display_name;
       id;
       labels;
       location_id;
       memory_size_gb;
       name;
       project;
       read_replicas_mode;
       redis_configs;
       redis_version;
       region;
       replica_count;
       reserved_ip_range;
       secondary_ip_range;
       tier;
       transit_encryption_mode;
       maintenance_policy;
       persistence_config;
       timeouts;
     }
      : google_redis_instance)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_redis_instance __resource);
  let __resource_attributes =
    ({
       alternative_location_id =
         Prop.computed __resource_type __resource_id
           "alternative_location_id";
       auth_enabled =
         Prop.computed __resource_type __resource_id "auth_enabled";
       auth_string =
         Prop.computed __resource_type __resource_id "auth_string";
       authorized_network =
         Prop.computed __resource_type __resource_id
           "authorized_network";
       connect_mode =
         Prop.computed __resource_type __resource_id "connect_mode";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       current_location_id =
         Prop.computed __resource_type __resource_id
           "current_location_id";
       customer_managed_key =
         Prop.computed __resource_type __resource_id
           "customer_managed_key";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       host = Prop.computed __resource_type __resource_id "host";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       location_id =
         Prop.computed __resource_type __resource_id "location_id";
       maintenance_schedule =
         Prop.computed __resource_type __resource_id
           "maintenance_schedule";
       memory_size_gb =
         Prop.computed __resource_type __resource_id "memory_size_gb";
       name = Prop.computed __resource_type __resource_id "name";
       nodes = Prop.computed __resource_type __resource_id "nodes";
       persistence_iam_identity =
         Prop.computed __resource_type __resource_id
           "persistence_iam_identity";
       port = Prop.computed __resource_type __resource_id "port";
       project =
         Prop.computed __resource_type __resource_id "project";
       read_endpoint =
         Prop.computed __resource_type __resource_id "read_endpoint";
       read_endpoint_port =
         Prop.computed __resource_type __resource_id
           "read_endpoint_port";
       read_replicas_mode =
         Prop.computed __resource_type __resource_id
           "read_replicas_mode";
       redis_configs =
         Prop.computed __resource_type __resource_id "redis_configs";
       redis_version =
         Prop.computed __resource_type __resource_id "redis_version";
       region = Prop.computed __resource_type __resource_id "region";
       replica_count =
         Prop.computed __resource_type __resource_id "replica_count";
       reserved_ip_range =
         Prop.computed __resource_type __resource_id
           "reserved_ip_range";
       secondary_ip_range =
         Prop.computed __resource_type __resource_id
           "secondary_ip_range";
       server_ca_certs =
         Prop.computed __resource_type __resource_id
           "server_ca_certs";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       tier = Prop.computed __resource_type __resource_id "tier";
       transit_encryption_mode =
         Prop.computed __resource_type __resource_id
           "transit_encryption_mode";
     }
      : t)
  in
  __resource_attributes
