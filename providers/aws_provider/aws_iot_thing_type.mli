(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iot_thing_type__properties
type aws_iot_thing_type

val aws_iot_thing_type :
  ?deprecated:bool prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  properties:aws_iot_thing_type__properties list ->
  string ->
  unit
