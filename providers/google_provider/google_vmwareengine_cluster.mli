(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_cluster__node_type_configs
type google_vmwareengine_cluster__timeouts
type google_vmwareengine_cluster

val google_vmwareengine_cluster :
  ?timeouts:google_vmwareengine_cluster__timeouts ->
  name:string ->
  parent:string ->
  node_type_configs:
    google_vmwareengine_cluster__node_type_configs list ->
  string ->
  unit
