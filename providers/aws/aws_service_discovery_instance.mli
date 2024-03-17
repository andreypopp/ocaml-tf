(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_service_discovery_instance

type t = private {
  attributes : (string * string) list prop;
  id : string prop;
  instance_id : string prop;
  service_id : string prop;
}

val aws_service_discovery_instance :
  ?id:string prop ->
  attributes:(string * string prop) list ->
  instance_id:string prop ->
  service_id:string prop ->
  string ->
  t
