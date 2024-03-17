(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_thing_type__properties
type aws_iot_thing_type

val aws_iot_thing_type :
  ?deprecated:bool ->
  ?tags:(string * string) list ->
  name:string ->
  properties:aws_iot_thing_type__properties list ->
  string ->
  unit
