(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type google_redis_instance__maintenance_policy__weekly_maintenance_window__start_time = {
  hours : float option; [@option]
      (** Hours of day in 24 hour format. Should be from 0 to 23.
An API may choose to allow the value 24:00:00 for scenarios like business closing time. *)
  minutes : float option; [@option]
      (** Minutes of hour of day. Must be from 0 to 59. *)
  nanos : float option; [@option]
      (** Fractions of seconds in nanoseconds. Must be from 0 to 999,999,999. *)
  seconds : float option; [@option]
      (** Seconds of minutes of the time. Must normally be from 0 to 59.
An API may allow the value 60 if it allows leap-seconds. *)
}
[@@deriving yojson_of]
(** Required. Start time of the window in UTC time. *)

type google_redis_instance__maintenance_policy__weekly_maintenance_window = {
  day : string;
      (** Required. The day of week that maintenance updates occur.

- DAY_OF_WEEK_UNSPECIFIED: The day of the week is unspecified.
- MONDAY: Monday
- TUESDAY: Tuesday
- WEDNESDAY: Wednesday
- THURSDAY: Thursday
- FRIDAY: Friday
- SATURDAY: Saturday
- SUNDAY: Sunday Possible values: [DAY_OF_WEEK_UNSPECIFIED, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, FRIDAY, SATURDAY, SUNDAY] *)
  duration : string;
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
  create_time : string;
      (** Output only. The time when the policy was created.
A timestamp in RFC3339 UTC Zulu format, with nanosecond
resolution and up to nine fractional digits. *)
  description : string option; [@option]
      (** Optional. Description of what this policy is for.
Create/Update methods return INVALID_ARGUMENT if the
length is greater than 512. *)
  update_time : string;
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
  persistence_mode : string option; [@option]
      (** Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.

- DISABLED: 	Persistence is disabled for the instance, and any existing snapshots are deleted.
- RDB: RDB based Persistence is enabled. Possible values: [DISABLED, RDB] *)
  rdb_next_snapshot_time : string;
      (** Output only. The next time that a snapshot attempt is scheduled to occur.
A timestamp in RFC3339 UTC Zulu format, with nanosecond resolution and up
to nine fractional digits.
Examples: 2014-10-02T15:01:23Z and 2014-10-02T15:01:23.045123456Z. *)
  rdb_snapshot_period : string option; [@option]
      (** Optional. Available snapshot periods for scheduling.

- ONE_HOUR:	Snapshot every 1 hour.
- SIX_HOURS:	Snapshot every 6 hours.
- TWELVE_HOURS:	Snapshot every 12 hours.
- TWENTY_FOUR_HOURS:	Snapshot every 24 hours. Possible values: [ONE_HOUR, SIX_HOURS, TWELVE_HOURS, TWENTY_FOUR_HOURS] *)
  rdb_snapshot_start_time : string option; [@option]
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
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_redis_instance__timeouts *)

type google_redis_instance__maintenance_schedule = {
  end_time : string;  (** end_time *)
  schedule_deadline_time : string;  (** schedule_deadline_time *)
  start_time : string;  (** start_time *)
}
[@@deriving yojson_of]

type google_redis_instance__nodes = {
  id : string;  (** id *)
  zone : string;  (** zone *)
}
[@@deriving yojson_of]

type google_redis_instance__server_ca_certs = {
  cert : string;  (** cert *)
  create_time : string;  (** create_time *)
  expire_time : string;  (** expire_time *)
  serial_number : string;  (** serial_number *)
  sha1_fingerprint : string;  (** sha1_fingerprint *)
}
[@@deriving yojson_of]

type google_redis_instance = {
  auth_enabled : bool option; [@option]
      (** Optional. Indicates whether OSS Redis AUTH is enabled for the
instance. If set to true AUTH is enabled on the instance.
Default value is false meaning AUTH is disabled. *)
  connect_mode : string option; [@option]
      (** The connection mode of the Redis instance. Default value: DIRECT_PEERING Possible values: [DIRECT_PEERING, PRIVATE_SERVICE_ACCESS] *)
  customer_managed_key : string option; [@option]
      (** Optional. The KMS key reference that you want to use to encrypt the data at rest for this Redis
instance. If this is provided, CMEK is enabled. *)
  display_name : string option; [@option]
      (** An arbitrary and optional user-provided name for the instance. *)
  labels : (string * string) list option; [@option]
      (** Resource labels to represent user provided metadata.

**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  memory_size_gb : float;  (** Redis memory size in GiB. *)
  name : string;
      (** The ID of the instance or a fully qualified identifier for the instance. *)
  redis_configs : (string * string) list option; [@option]
      (** Redis configuration parameters, according to http://redis.io/topics/config.
Please check Memorystore documentation for the list of supported parameters:
https://cloud.google.com/memorystore/docs/redis/reference/rest/v1/projects.locations.instances#Instance.FIELDS.redis_configs *)
  tier : string option; [@option]
      (** The service tier of the instance. Must be one of these values:

- BASIC: standalone instance
- STANDARD_HA: highly available primary/replica instances Default value: BASIC Possible values: [BASIC, STANDARD_HA] *)
  transit_encryption_mode : string option; [@option]
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

let google_redis_instance ?auth_enabled ?connect_mode
    ?customer_managed_key ?display_name ?labels ?redis_configs ?tier
    ?transit_encryption_mode ?timeouts ~memory_size_gb ~name
    ~maintenance_policy ~persistence_config __resource_id =
  let __resource_type = "google_redis_instance" in
  let __resource =
    {
      auth_enabled;
      connect_mode;
      customer_managed_key;
      display_name;
      labels;
      memory_size_gb;
      name;
      redis_configs;
      tier;
      transit_encryption_mode;
      maintenance_policy;
      persistence_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_redis_instance __resource);
  ()
