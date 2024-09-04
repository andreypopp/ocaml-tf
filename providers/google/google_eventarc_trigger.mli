(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type destination__cloud_run_service

val destination__cloud_run_service :
  ?path:string prop ->
  ?region:string prop ->
  service:string prop ->
  unit ->
  destination__cloud_run_service

type destination__gke

val destination__gke :
  ?path:string prop ->
  cluster:string prop ->
  location:string prop ->
  namespace:string prop ->
  service:string prop ->
  unit ->
  destination__gke

type destination__http_endpoint

val destination__http_endpoint :
  uri:string prop -> unit -> destination__http_endpoint

type destination__network_config

val destination__network_config :
  network_attachment:string prop ->
  unit ->
  destination__network_config

type destination

val destination :
  ?workflow:string prop ->
  ?cloud_run_service:destination__cloud_run_service list ->
  ?gke:destination__gke list ->
  ?http_endpoint:destination__http_endpoint list ->
  ?network_config:destination__network_config list ->
  unit ->
  destination

type matching_criteria

val matching_criteria :
  ?operator:string prop ->
  attribute:string prop ->
  value:string prop ->
  unit ->
  matching_criteria

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type transport__pubsub

val transport__pubsub :
  ?topic:string prop -> unit -> transport__pubsub

type transport

val transport : ?pubsub:transport__pubsub list -> unit -> transport

type google_eventarc_trigger

val google_eventarc_trigger :
  ?channel:string prop ->
  ?event_data_content_type:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?service_account:string prop ->
  ?timeouts:timeouts ->
  ?transport:transport list ->
  location:string prop ->
  name:string prop ->
  destination:destination list ->
  matching_criteria:matching_criteria list ->
  unit ->
  google_eventarc_trigger

val yojson_of_google_eventarc_trigger :
  google_eventarc_trigger -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  channel : string prop;
  conditions : string Tf_core.assoc prop;
  create_time : string prop;
  effective_labels : string Tf_core.assoc prop;
  etag : string prop;
  event_data_content_type : string prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  name : string prop;
  project : string prop;
  service_account : string prop;
  terraform_labels : string Tf_core.assoc prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?channel:string prop ->
  ?event_data_content_type:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?service_account:string prop ->
  ?timeouts:timeouts ->
  ?transport:transport list ->
  location:string prop ->
  name:string prop ->
  destination:destination list ->
  matching_criteria:matching_criteria list ->
  string ->
  t

val make :
  ?channel:string prop ->
  ?event_data_content_type:string prop ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?project:string prop ->
  ?service_account:string prop ->
  ?timeouts:timeouts ->
  ?transport:transport list ->
  location:string prop ->
  name:string prop ->
  destination:destination list ->
  matching_criteria:matching_criteria list ->
  string ->
  t Tf_core.resource
