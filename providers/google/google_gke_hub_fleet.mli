(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type state = { code : string prop  (** code *) }

type default_cluster_config__binary_authorization_config__policy_bindings

val default_cluster_config__binary_authorization_config__policy_bindings :
  ?name:string prop ->
  unit ->
  default_cluster_config__binary_authorization_config__policy_bindings

type default_cluster_config__binary_authorization_config

val default_cluster_config__binary_authorization_config :
  ?evaluation_mode:string prop ->
  ?policy_bindings:
    default_cluster_config__binary_authorization_config__policy_bindings
    list ->
  unit ->
  default_cluster_config__binary_authorization_config

type default_cluster_config__security_posture_config

val default_cluster_config__security_posture_config :
  ?mode:string prop ->
  ?vulnerability_mode:string prop ->
  unit ->
  default_cluster_config__security_posture_config

type default_cluster_config

val default_cluster_config :
  ?binary_authorization_config:
    default_cluster_config__binary_authorization_config list ->
  ?security_posture_config:
    default_cluster_config__security_posture_config list ->
  unit ->
  default_cluster_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_gke_hub_fleet

val google_gke_hub_fleet :
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?default_cluster_config:default_cluster_config list ->
  ?timeouts:timeouts ->
  unit ->
  google_gke_hub_fleet

val yojson_of_google_gke_hub_fleet : google_gke_hub_fleet -> json

(** RESOURCE REGISTRATION *)

type t = private {
  create_time : string prop;
  delete_time : string prop;
  display_name : string prop;
  id : string prop;
  project : string prop;
  state : state list prop;
  uid : string prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?default_cluster_config:default_cluster_config list ->
  ?timeouts:timeouts ->
  string ->
  t

val make :
  ?display_name:string prop ->
  ?id:string prop ->
  ?project:string prop ->
  ?default_cluster_config:default_cluster_config list ->
  ?timeouts:timeouts ->
  string ->
  t Tf_core.resource
