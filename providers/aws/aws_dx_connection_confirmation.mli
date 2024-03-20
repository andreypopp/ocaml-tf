(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dx_connection_confirmation

val aws_dx_connection_confirmation :
  ?id:string prop ->
  connection_id:string prop ->
  unit ->
  aws_dx_connection_confirmation

val yojson_of_aws_dx_connection_confirmation :
  aws_dx_connection_confirmation -> json

(** RESOURCE REGISTRATION *)

type t = private { connection_id : string prop; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  connection_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  connection_id:string prop ->
  string ->
  t Tf_core.resource
