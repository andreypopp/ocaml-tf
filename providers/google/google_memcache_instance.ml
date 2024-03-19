(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type maintenance_policy__weekly_maintenance_window__start_time = {
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

type maintenance_policy__weekly_maintenance_window = {
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
      (** Required. The length of the maintenance window, ranging from 3 hours to 8 hours.
A duration in seconds with up to nine fractional digits,
terminated by 's'. Example: 3.5s. *)
  start_time :
    maintenance_policy__weekly_maintenance_window__start_time list;
}
[@@deriving yojson_of]
(** Required. Maintenance window that is applied to resources covered by this policy.
Minimum 1. For the current version, the maximum number of weekly_maintenance_windows
is expected to be one. *)

type maintenance_policy = {
  description : string prop option; [@option]
      (** Optional. Description of what this policy is for.
Create/Update methods return INVALID_ARGUMENT if the
length is greater than 512. *)
  weekly_maintenance_window :
    maintenance_policy__weekly_maintenance_window list;
}
[@@deriving yojson_of]
(** Maintenance policy for an instance. *)

type memcache_parameters = {
  params : (string * string prop) list option; [@option]
      (** User-defined set of parameters to use in the memcache process. *)
}
[@@deriving yojson_of]
(** User-specified parameters for this memcache instance. *)

type node_config = {
  cpu_count : float prop;  (** Number of CPUs per node. *)
  memory_size_mb : float prop;
      (** Memory size in Mebibytes for each memcache node. *)
}
[@@deriving yojson_of]
(** Configuration for memcache nodes. *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type maintenance_schedule = {
  end_time : string prop;  (** end_time *)
  schedule_deadline_time : string prop;
      (** schedule_deadline_time *)
  start_time : string prop;  (** start_time *)
}
[@@deriving yojson_of]

type memcache_nodes = {
  host : string prop;  (** host *)
  node_id : string prop;  (** node_id *)
  port : float prop;  (** port *)
  state : string prop;  (** state *)
  zone : string prop;  (** zone *)
}
[@@deriving yojson_of]

type google_memcache_instance = {
  authorized_network : string prop option; [@option]
      (** The full name of the GCE network to connect the instance to.  If not provided,
'default' will be used. *)
  display_name : string prop option; [@option]
      (** A user-visible name for the instance. *)
  id : string prop option; [@option]  (** id *)
  labels : (string * string prop) list option; [@option]
      (** Resource labels to represent user-provided metadata.


**Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
Please refer to the field 'effective_labels' for all of the labels present on the resource. *)
  memcache_version : string prop option; [@option]
      (** The major version of Memcached software. If not provided, latest supported version will be used.
Currently the latest supported major version is MEMCACHE_1_5. The minor version will be automatically
determined by our system based on the latest supported minor version. Default value: MEMCACHE_1_5 Possible values: [MEMCACHE_1_5, MEMCACHE_1_6_15] *)
  name : string prop;  (** The resource name of the instance. *)
  node_count : float prop;
      (** Number of nodes in the memcache instance. *)
  project : string prop option; [@option]  (** project *)
  region : string prop option; [@option]
      (** The region of the Memcache instance. If it is not provided, the provider region is used. *)
  reserved_ip_range_id : string prop list option; [@option]
      (** Contains the name of allocated IP address ranges associated with
the private service access connection for example, test-default
associated with IP range 10.0.0.0/29. *)
  zones : string prop list option; [@option]
      (** Zones where memcache nodes should be provisioned.  If not
provided, all zones will be used. *)
  maintenance_policy : maintenance_policy list;
  memcache_parameters : memcache_parameters list;
  node_config : node_config list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** google_memcache_instance *)

let maintenance_policy__weekly_maintenance_window__start_time ?hours
    ?minutes ?nanos ?seconds () :
    maintenance_policy__weekly_maintenance_window__start_time =
  { hours; minutes; nanos; seconds }

let maintenance_policy__weekly_maintenance_window ~day ~duration
    ~start_time () : maintenance_policy__weekly_maintenance_window =
  { day; duration; start_time }

let maintenance_policy ?description ~weekly_maintenance_window () :
    maintenance_policy =
  { description; weekly_maintenance_window }

let memcache_parameters ?params () : memcache_parameters = { params }

let node_config ~cpu_count ~memory_size_mb () : node_config =
  { cpu_count; memory_size_mb }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let google_memcache_instance ?authorized_network ?display_name ?id
    ?labels ?memcache_version ?project ?region ?reserved_ip_range_id
    ?zones ?timeouts ~name ~node_count ~maintenance_policy
    ~memcache_parameters ~node_config () : google_memcache_instance =
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

type t = {
  authorized_network : string prop;
  create_time : string prop;
  discovery_endpoint : string prop;
  display_name : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  maintenance_schedule : maintenance_schedule list prop;
  memcache_full_version : string prop;
  memcache_nodes : memcache_nodes list prop;
  memcache_version : string prop;
  name : string prop;
  node_count : float prop;
  project : string prop;
  region : string prop;
  reserved_ip_range_id : string list prop;
  terraform_labels : (string * string) list prop;
  zones : string list prop;
}

let register ?tf_module ?authorized_network ?display_name ?id ?labels
    ?memcache_version ?project ?region ?reserved_ip_range_id ?zones
    ?timeouts ~name ~node_count ~maintenance_policy
    ~memcache_parameters ~node_config __resource_id =
  let __resource_type = "google_memcache_instance" in
  let __resource =
    google_memcache_instance ?authorized_network ?display_name ?id
      ?labels ?memcache_version ?project ?region
      ?reserved_ip_range_id ?zones ?timeouts ~name ~node_count
      ~maintenance_policy ~memcache_parameters ~node_config ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_google_memcache_instance __resource);
  let __resource_attributes =
    ({
       authorized_network =
         Prop.computed __resource_type __resource_id
           "authorized_network";
       create_time =
         Prop.computed __resource_type __resource_id "create_time";
       discovery_endpoint =
         Prop.computed __resource_type __resource_id
           "discovery_endpoint";
       display_name =
         Prop.computed __resource_type __resource_id "display_name";
       effective_labels =
         Prop.computed __resource_type __resource_id
           "effective_labels";
       id = Prop.computed __resource_type __resource_id "id";
       labels = Prop.computed __resource_type __resource_id "labels";
       maintenance_schedule =
         Prop.computed __resource_type __resource_id
           "maintenance_schedule";
       memcache_full_version =
         Prop.computed __resource_type __resource_id
           "memcache_full_version";
       memcache_nodes =
         Prop.computed __resource_type __resource_id "memcache_nodes";
       memcache_version =
         Prop.computed __resource_type __resource_id
           "memcache_version";
       name = Prop.computed __resource_type __resource_id "name";
       node_count =
         Prop.computed __resource_type __resource_id "node_count";
       project =
         Prop.computed __resource_type __resource_id "project";
       region = Prop.computed __resource_type __resource_id "region";
       reserved_ip_range_id =
         Prop.computed __resource_type __resource_id
           "reserved_ip_range_id";
       terraform_labels =
         Prop.computed __resource_type __resource_id
           "terraform_labels";
       zones = Prop.computed __resource_type __resource_id "zones";
     }
      : t)
  in
  __resource_attributes
