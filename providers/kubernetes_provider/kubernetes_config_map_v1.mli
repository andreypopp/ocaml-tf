(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type kubernetes_config_map_v1__metadata
type kubernetes_config_map_v1

type t = private {
  binary_data : (string * string) list prop;
  data : (string * string) list prop;
  id : string prop;
  immutable : bool prop;
}

val kubernetes_config_map_v1 :
  ?binary_data:(string * string prop) list ->
  ?data:(string * string prop) list ->
  ?id:string prop ->
  ?immutable:bool prop ->
  metadata:kubernetes_config_map_v1__metadata list ->
  string ->
  t
