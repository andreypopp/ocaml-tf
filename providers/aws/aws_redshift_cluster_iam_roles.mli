(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type timeouts

val timeouts :
  ?create:string prop ->
  ?delete:string prop ->
  ?update:string prop ->
  unit ->
  timeouts

type aws_redshift_cluster_iam_roles

val aws_redshift_cluster_iam_roles :
  ?default_iam_role_arn:string prop ->
  ?iam_role_arns:string prop list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_identifier:string prop ->
  unit ->
  aws_redshift_cluster_iam_roles

val yojson_of_aws_redshift_cluster_iam_roles :
  aws_redshift_cluster_iam_roles -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  cluster_identifier : string prop;
  default_iam_role_arn : string prop;
  iam_role_arns : string list prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?default_iam_role_arn:string prop ->
  ?iam_role_arns:string prop list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_identifier:string prop ->
  string ->
  t

val make :
  ?default_iam_role_arn:string prop ->
  ?iam_role_arns:string prop list ->
  ?id:string prop ->
  ?timeouts:timeouts ->
  cluster_identifier:string prop ->
  string ->
  t Tf_core.resource
