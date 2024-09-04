(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type local_disk_encryption

val local_disk_encryption :
  ?kms_key:string prop -> unit -> local_disk_encryption

type node_config

val node_config :
  ?labels:string prop Tf_core.assoc -> unit -> node_config

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type google_edgecontainer_node_pool

val google_edgecontainer_node_pool :
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?machine_filter:string prop ->
  ?project:string prop ->
  ?local_disk_encryption:local_disk_encryption list ->
  ?node_config:node_config list ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  node_count:float prop ->
  node_location:string prop ->
  unit ->
  google_edgecontainer_node_pool

val yojson_of_google_edgecontainer_node_pool :
  google_edgecontainer_node_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster : string prop;
  create_time : string prop;
  effective_labels : string Tf_core.assoc prop;
  id : string prop;
  labels : string Tf_core.assoc prop;
  location : string prop;
  machine_filter : string prop;
  name : string prop;
  node_count : float prop;
  node_location : string prop;
  node_version : string prop;
  project : string prop;
  terraform_labels : string Tf_core.assoc prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?machine_filter:string prop ->
  ?project:string prop ->
  ?local_disk_encryption:local_disk_encryption list ->
  ?node_config:node_config list ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  node_count:float prop ->
  node_location:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?labels:string prop Tf_core.assoc ->
  ?machine_filter:string prop ->
  ?project:string prop ->
  ?local_disk_encryption:local_disk_encryption list ->
  ?node_config:node_config list ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  node_count:float prop ->
  node_location:string prop ->
  string ->
  t Tf_core.resource
