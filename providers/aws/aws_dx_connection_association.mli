(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_dx_connection_association

val aws_dx_connection_association :
  ?id:string prop ->
  connection_id:string prop ->
  lag_id:string prop ->
  unit ->
  aws_dx_connection_association

val yojson_of_aws_dx_connection_association :
  aws_dx_connection_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  connection_id : string prop;
  id : string prop;
  lag_id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  connection_id:string prop ->
  lag_id:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  connection_id:string prop ->
  lag_id:string prop ->
  string ->
  t Tf_core.resource
