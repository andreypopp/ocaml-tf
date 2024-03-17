(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_edgecontainer_node_pool__local_disk_encryption
type google_edgecontainer_node_pool__node_config
type google_edgecontainer_node_pool__timeouts
type google_edgecontainer_node_pool

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
  unit
