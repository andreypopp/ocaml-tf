(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_codestarconnections_connection

val aws_codestarconnections_connection :
  ?host_arn:string prop ->
  ?id:string prop ->
  ?provider_type:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  name:string prop ->
  string ->
  unit
