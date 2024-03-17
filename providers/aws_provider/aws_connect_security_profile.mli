(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_connect_security_profile

val aws_connect_security_profile :
  ?description:string ->
  ?permissions:string list ->
  ?tags:(string * string) list ->
  instance_id:string ->
  name:string ->
  string ->
  unit
