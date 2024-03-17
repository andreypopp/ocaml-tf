(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_edgecontainer_node_pool__local_disk_encryption
type google_edgecontainer_node_pool__node_config
type google_edgecontainer_node_pool__timeouts
type google_edgecontainer_node_pool

val google_edgecontainer_node_pool :
  ?labels:(string * string) list ->
  ?timeouts:google_edgecontainer_node_pool__timeouts ->
  cluster:string ->
  location:string ->
  name:string ->
  node_count:float ->
  node_location:string ->
  local_disk_encryption:
    google_edgecontainer_node_pool__local_disk_encryption list ->
  node_config:google_edgecontainer_node_pool__node_config list ->
  string ->
  unit
