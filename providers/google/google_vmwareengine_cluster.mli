(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type google_vmwareengine_cluster__node_type_configs
type google_vmwareengine_cluster__timeouts
type google_vmwareengine_cluster

type t = private {
  id : string prop;
  management : bool prop;
  name : string prop;
  parent : string prop;
  state : string prop;
  uid : string prop;
}

val google_vmwareengine_cluster :
  ?id:string prop ->
  ?timeouts:google_vmwareengine_cluster__timeouts ->
  name:string prop ->
  parent:string prop ->
  node_type_configs:
    google_vmwareengine_cluster__node_type_configs list ->
  string ->
  t
