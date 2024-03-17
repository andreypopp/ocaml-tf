(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_mq_configuration

val aws_mq_configuration :
  ?authentication_strategy:string prop ->
  ?description:string prop ->
  ?id:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  data:string prop ->
  engine_type:string prop ->
  engine_version:string prop ->
  name:string prop ->
  string ->
  unit
