(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop -> ?delete:string prop -> unit -> timeouts

type aws_rds_cluster_role_association

val aws_rds_cluster_role_association :
  ?id:string prop ->
  ?timeouts:timeouts ->
  db_cluster_identifier:string prop ->
  feature_name:string prop ->
  role_arn:string prop ->
  unit ->
  aws_rds_cluster_role_association

val yojson_of_aws_rds_cluster_role_association :
  aws_rds_cluster_role_association -> json

(** RESOURCE REGISTRATION *)

type t = private {
  db_cluster_identifier : string prop;
  feature_name : string prop;
  id : string prop;
  role_arn : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  db_cluster_identifier:string prop ->
  feature_name:string prop ->
  role_arn:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?timeouts:timeouts ->
  db_cluster_identifier:string prop ->
  feature_name:string prop ->
  role_arn:string prop ->
  string ->
  t Tf_core.resource
