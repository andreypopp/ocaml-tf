(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_compute_node_template__node_type_flexibility
type google_compute_node_template__server_binding
type google_compute_node_template__timeouts
type google_compute_node_template

val google_compute_node_template :
  ?cpu_overcommit_type:string ->
  ?description:string ->
  ?id:string ->
  ?name:string ->
  ?node_affinity_labels:(string * string) list ->
  ?node_type:string ->
  ?project:string ->
  ?region:string ->
  ?timeouts:google_compute_node_template__timeouts ->
  node_type_flexibility:
    google_compute_node_template__node_type_flexibility list ->
  server_binding:google_compute_node_template__server_binding list ->
  string ->
  unit
