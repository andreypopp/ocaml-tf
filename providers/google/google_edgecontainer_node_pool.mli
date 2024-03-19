(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type local_disk_encryption

val local_disk_encryption :
  ?kms_key:string prop -> unit -> local_disk_encryption

type node_config

val node_config :
  ?labels:(string * string prop) list -> unit -> node_config

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
  ?labels:(string * string prop) list ->
  ?machine_filter:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  node_count:float prop ->
  node_location:string prop ->
  local_disk_encryption:local_disk_encryption list ->
  node_config:node_config list ->
  unit ->
  google_edgecontainer_node_pool

val yojson_of_google_edgecontainer_node_pool :
  google_edgecontainer_node_pool -> json

(** RESOURCE REGISTRATION *)

type t = private {
  cluster : string prop;
  create_time : string prop;
  effective_labels : (string * string) list prop;
  id : string prop;
  labels : (string * string) list prop;
  location : string prop;
  machine_filter : string prop;
  name : string prop;
  node_count : float prop;
  node_location : string prop;
  node_version : string prop;
  project : string prop;
  terraform_labels : (string * string) list prop;
  update_time : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?machine_filter:string prop ->
  ?project:string prop ->
  ?timeouts:timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  node_count:float prop ->
  node_location:string prop ->
  local_disk_encryption:local_disk_encryption list ->
  node_config:node_config list ->
  string ->
  t
