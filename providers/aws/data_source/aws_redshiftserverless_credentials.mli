(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshiftserverless_credentials

val aws_redshiftserverless_credentials :
  ?db_name:string prop ->
  ?duration_seconds:float prop ->
  ?id:string prop ->
  workgroup_name:string prop ->
  unit ->
  aws_redshiftserverless_credentials

val yojson_of_aws_redshiftserverless_credentials :
  aws_redshiftserverless_credentials -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  db_name : string prop;
  db_password : string prop;
  db_user : string prop;
  duration_seconds : float prop;
  expiration : string prop;
  id : string prop;
  workgroup_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?db_name:string prop ->
  ?duration_seconds:float prop ->
  ?id:string prop ->
  workgroup_name:string prop ->
  string ->
  t

val make :
  ?db_name:string prop ->
  ?duration_seconds:float prop ->
  ?id:string prop ->
  workgroup_name:string prop ->
  string ->
  t Tf_core.resource
