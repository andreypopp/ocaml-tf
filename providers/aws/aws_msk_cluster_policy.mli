(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_msk_cluster_policy

val aws_msk_cluster_policy :
  ?id:string prop ->
  cluster_arn:string prop ->
  policy:string prop ->
  unit ->
  aws_msk_cluster_policy

val yojson_of_aws_msk_cluster_policy : aws_msk_cluster_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_arn : string prop;
  current_version : string prop;
  id : string prop;
  policy : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  cluster_arn:string prop ->
  policy:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  cluster_arn:string prop ->
  policy:string prop ->
  string ->
  t Tf_core.resource
