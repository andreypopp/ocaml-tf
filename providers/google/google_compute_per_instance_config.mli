(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type preserved_state__disk

val preserved_state__disk :
  ?delete_rule:string prop ->
  ?mode:string prop ->
  device_name:string prop ->
  source:string prop ->
  unit ->
  preserved_state__disk

type preserved_state__external_ip__ip_address

val preserved_state__external_ip__ip_address :
  ?address:string prop ->
  unit ->
  preserved_state__external_ip__ip_address

type preserved_state__external_ip

val preserved_state__external_ip :
  ?auto_delete:string prop ->
  ?ip_address:preserved_state__external_ip__ip_address list ->
  interface_name:string prop ->
  unit ->
  preserved_state__external_ip

type preserved_state__internal_ip__ip_address

val preserved_state__internal_ip__ip_address :
  ?address:string prop ->
  unit ->
  preserved_state__internal_ip__ip_address

type preserved_state__internal_ip

val preserved_state__internal_ip :
  ?auto_delete:string prop ->
  ?ip_address:preserved_state__internal_ip__ip_address list ->
  interface_name:string prop ->
  unit ->
  preserved_state__internal_ip

type preserved_state

val preserved_state :
  ?metadata:string prop Tf_core.assoc ->
  disk:preserved_state__disk list ->
  external_ip:preserved_state__external_ip list ->
  internal_ip:preserved_state__internal_ip list ->
  unit ->
  preserved_state

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_compute_per_instance_config

val google_compute_per_instance_config :
  ?id:string prop ->
  ?minimal_action:string prop ->
  ?most_disruptive_allowed_action:string prop ->
  ?project:string prop ->
  ?remove_instance_on_destroy:bool prop ->
  ?remove_instance_state_on_destroy:bool prop ->
  ?zone:string prop ->
  ?preserved_state:preserved_state list ->
  ?timeouts:timeouts ->
  instance_group_manager:string prop ->
  name:string prop ->
  unit ->
  google_compute_per_instance_config

val yojson_of_google_compute_per_instance_config :
  google_compute_per_instance_config -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  id : string prop;
  instance_group_manager : string prop;
  minimal_action : string prop;
  most_disruptive_allowed_action : string prop;
  name : string prop;
  project : string prop;
  remove_instance_on_destroy : bool prop;
  remove_instance_state_on_destroy : bool prop;
  zone : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?minimal_action:string prop ->
  ?most_disruptive_allowed_action:string prop ->
  ?project:string prop ->
  ?remove_instance_on_destroy:bool prop ->
  ?remove_instance_state_on_destroy:bool prop ->
  ?zone:string prop ->
  ?preserved_state:preserved_state list ->
  ?timeouts:timeouts ->
  instance_group_manager:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?minimal_action:string prop ->
  ?most_disruptive_allowed_action:string prop ->
  ?project:string prop ->
  ?remove_instance_on_destroy:bool prop ->
  ?remove_instance_state_on_destroy:bool prop ->
  ?zone:string prop ->
  ?preserved_state:preserved_state list ->
  ?timeouts:timeouts ->
  instance_group_manager:string prop ->
  name:string prop ->
  string ->
  t Tf_core.resource
