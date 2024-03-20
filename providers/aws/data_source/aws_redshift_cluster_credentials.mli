(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshift_cluster_credentials

val aws_redshift_cluster_credentials :
  ?auto_create:bool prop ->
  ?db_groups:string prop list ->
  ?db_name:string prop ->
  ?duration_seconds:float prop ->
  ?id:string prop ->
  cluster_identifier:string prop ->
  db_user:string prop ->
  unit ->
  aws_redshift_cluster_credentials

val yojson_of_aws_redshift_cluster_credentials :
  aws_redshift_cluster_credentials -> json

(** RESOURCE REGISTRATION *)

type t = private {
  auto_create : bool prop;
  cluster_identifier : string prop;
  db_groups : string list prop;
  db_name : string prop;
  db_password : string prop;
  db_user : string prop;
  duration_seconds : float prop;
  expiration : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auto_create:bool prop ->
  ?db_groups:string prop list ->
  ?db_name:string prop ->
  ?duration_seconds:float prop ->
  ?id:string prop ->
  cluster_identifier:string prop ->
  db_user:string prop ->
  string ->
  t

val make :
  ?auto_create:bool prop ->
  ?db_groups:string prop list ->
  ?db_name:string prop ->
  ?duration_seconds:float prop ->
  ?id:string prop ->
  cluster_identifier:string prop ->
  db_user:string prop ->
  string ->
  t Tf_core.resource
