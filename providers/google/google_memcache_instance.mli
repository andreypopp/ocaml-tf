(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type maintenance_schedule = {
  end_time : string prop;  (** end_time *)
  schedule_deadline_time : string prop;
      (** schedule_deadline_time *)
  start_time : string prop;  (** start_time *)
}

type memcache_nodes = {
  host : string prop;  (** host *)
  node_id : string prop;  (** node_id *)
  port : float prop;  (** port *)
  state : string prop;  (** state *)
  zone : string prop;  (** zone *)
}

type maintenance_policy__weekly_maintenance_window__start_time

val maintenance_policy__weekly_maintenance_window__start_time :
  ?hours:float prop ->
  ?minutes:float prop ->
  ?nanos:float prop ->
  ?seconds:float prop ->
  unit ->
  maintenance_policy__weekly_maintenance_window__start_time

type maintenance_policy__weekly_maintenance_window

val maintenance_policy__weekly_maintenance_window :
  day:string prop ->
  duration:string prop ->
  start_time:
    maintenance_policy__weekly_maintenance_window__start_time list ->
  unit ->
  maintenance_policy__weekly_maintenance_window

type maintenance_policy

val maintenance_policy :
  ?description:string prop ->
  weekly_maintenance_window:
    maintenance_policy__weekly_maintenance_window list ->
  unit ->
  maintenance_policy

type memcache_parameters

val memcache_parameters :
  ?params:(string * string prop) list -> unit -> memcache_parameters

type node_config

val node_config :
  cpu_count:float prop ->
  memory_size_mb:float prop ->
  unit ->
  node_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_memcache_instance

val google_memcache_instance :
  ?authorized_network:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?memcache_version:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?reserved_ip_range_id:string prop list ->
  ?zones:string prop list ->
  ?maintenance_policy:maintenance_policy list ->
  ?memcache_parameters:memcache_parameters list ->
  ?timeouts:timeouts ->
  name:string prop ->
  node_count:float prop ->
  node_config:node_config list ->
  unit ->
  google_memcache_instance

val yojson_of_google_memcache_instance :
  google_memcache_instance -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
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

val register :
  ?tf_module:tf_module ->
  ?authorized_network:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?memcache_version:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?reserved_ip_range_id:string prop list ->
  ?zones:string prop list ->
  ?maintenance_policy:maintenance_policy list ->
  ?memcache_parameters:memcache_parameters list ->
  ?timeouts:timeouts ->
  name:string prop ->
  node_count:float prop ->
  node_config:node_config list ->
  string ->
  t

val make :
  ?authorized_network:string prop ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?memcache_version:string prop ->
  ?project:string prop ->
  ?region:string prop ->
  ?reserved_ip_range_id:string prop list ->
  ?zones:string prop list ->
  ?maintenance_policy:maintenance_policy list ->
  ?memcache_parameters:memcache_parameters list ->
  ?timeouts:timeouts ->
  name:string prop ->
  node_count:float prop ->
  node_config:node_config list ->
  string ->
  t Tf_core.resource
