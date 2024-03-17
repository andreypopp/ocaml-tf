(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_appstream_fleet_stack_association

type t = private {
  fleet_name : string prop;
  id : string prop;
  stack_name : string prop;
}

val aws_appstream_fleet_stack_association :
  ?id:string prop ->
  fleet_name:string prop ->
  stack_name:string prop ->
  string ->
  t
