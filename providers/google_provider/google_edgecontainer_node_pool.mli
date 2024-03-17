(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_edgecontainer_node_pool__local_disk_encryption
type google_edgecontainer_node_pool__node_config
type google_edgecontainer_node_pool__timeouts
type google_edgecontainer_node_pool

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

val google_edgecontainer_node_pool :
  ?id:string prop ->
  ?labels:(string * string prop) list ->
  ?machine_filter:string prop ->
  ?project:string prop ->
  ?timeouts:google_edgecontainer_node_pool__timeouts ->
  cluster:string prop ->
  location:string prop ->
  name:string prop ->
  node_count:float prop ->
  node_location:string prop ->
  local_disk_encryption:
    google_edgecontainer_node_pool__local_disk_encryption list ->
  node_config:google_edgecontainer_node_pool__node_config list ->
  string ->
  t
