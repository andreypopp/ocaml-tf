(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_mq_configuration

val aws_mq_configuration :
  ?authentication_strategy:string ->
  ?description:string ->
  ?id:string ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  data:string ->
  engine_type:string ->
  engine_version:string ->
  name:string ->
  string ->
  unit
