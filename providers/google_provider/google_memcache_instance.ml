(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type google_memcache_instance__maintenance_policy__weekly_maintenance_window__start_time = {
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

type google_memcache_instance__maintenance_policy__weekly_maintenance_window = {
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
      (** Required. The length of the maintenance window, ranging from 3 hours to 8 hours.
A duration in seconds with up to nine fractional digits,
terminated by 's'. Example: 3.5s. *)
  start_time :
    google_memcache_instance__maintenance_policy__weekly_maintenance_window__start_time
    list;
}
[@@deriving yojson_of]
(** Required. Maintenance window that is applied to resources covered by this policy.
Minimum 1. For the current version, the maximum number of weekly_maintenance_windows
is expected to be one. *)

type google_memcache_instance__maintenance_policy = {
  create_time : string;
      (** Output only. The time when the policy was created.
A timestamp in RFC3339 UTC Zulu format, with nanosecond
resolution and up to nine fractional digits *)
  description : string option; [@option]
      (** Optional. Description of what this policy is for.
Create/Update methods return INVALID_ARGUMENT if the
length is greater than 512. *)
  update_time : string;
      (** Output only. The time when the policy was updated.
A timestamp in RFC3339 UTC Zulu format, with nanosecond
resolution and up to nine fractional digits. *)
  weekly_maintenance_window :
    google_memcache_instance__maintenance_policy__weekly_maintenance_window
    list;
}
[@@deriving yojson_of]
(** Maintenance policy for an instance. *)

type google_memcache_instance__memcache_parameters = {
  id : string;
      (** This is a unique ID associated with this set of parameters. *)
  params : (string * string) list option; [@option]
      (** User-defined set of parameters to use in the memcache process. *)
}
[@@deriving yojson_of]
(** User-specified parameters for this memcache instance. *)

type google_memcache_instance__node_config = {
  cpu_count : float;  (** Number of CPUs per node. *)
  memory_size_mb : float;
      (** Memory size in Mebibytes for each memcache node. *)
}
[@@deriving yojson_of]
(** Configuration for memcache nodes. *)

type google_memcache_instance__timeouts = {
  create : string option; [@option]  (** create *)
  delete : string option; [@option]  (** delete *)
  update : string option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** google_memcache_instance__timeouts *)

type google_memcache_instance__maintenance_schedule = {
  end_time : string;  (** end_time *)
  schedule_deadline_time : string;  (** schedule_deadline_time *)
  start_time : string;  (** start_time *)
}
[@@deriving yojson_of]

type google_memcache_instance__memcache_nodes = {
  host : string;  (** host *)
  node_id : string;  (** node_id *)
  port : float;  (** port *)
  state : string;  (** state *)
  zone : string;  (** zone *)
}
[@@deriving yojson_of]

type google_memcache_instance = {
  authorized_network : string option; [@option]
      (** The full name of the GCE network to connect the instance to.  If not provided,
'default' will be used. *)
  display_name : string option; [@option]
      (** A user-visible name for the instance. *)
  id : string option; [@option]  (** id *)
  labels : (string * string) list option; [@option]
      (** Resource labels to represent user-provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  memcache_version : string option; [@option]
      (** The major version of Memcached software. If not provided, latest supported version will be used.
Currently the latest supported major version is MEMCACHE_1_5. The minor version will be automatically
determined by our system based on the latest supported minor version. Default value: MEMCACHE_1_5 Possible values: [MEMCACHE_1_5, MEMCACHE_1_6_15] *)
  name : string;  (** The resource name of the instance. *)
  node_count : float;
      (** Number of nodes in the memcache instance. *)
  project : string option; [@option]  (** project *)
  region : string option; [@option]
      (** The region of the Memcache instance. If it is not provided, the provider region is used. *)
  reserved_ip_range_id : string list option; [@option]
      (** Contains the name of allocated IP address ranges associated with
the private service access connection for example, test-default
associated with IP range 10.0.0.0/29. *)
  zones : string list option; [@option]
      (** Zones where memcache nodes should be provisioned.  If not
provided, all zones will be used. *)
  maintenance_policy :
    google_memcache_instance__maintenance_policy list;
  memcache_parameters :
    google_memcache_instance__memcache_parameters list;
  node_config : google_memcache_instance__node_config list;
  timeouts : google_memcache_instance__timeouts option;
}
[@@deriving yojson_of]
(** google_memcache_instance *)

let google_memcache_instance ?authorized_network ?display_name ?id
    ?labels ?memcache_version ?project ?region ?reserved_ip_range_id
    ?zones ?timeouts ~name ~node_count ~maintenance_policy
    ~memcache_parameters ~node_config __resource_id =
  let __resource_type = "google_memcache_instance" in
  let __resource =
    {
      authorized_network;
      display_name;
      id;
      labels;
      memcache_version;
      name;
      node_count;
      project;
      region;
      reserved_ip_range_id;
      zones;
      maintenance_policy;
      memcache_parameters;
      node_config;
      timeouts;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_memcache_instance __resource);
  ()
