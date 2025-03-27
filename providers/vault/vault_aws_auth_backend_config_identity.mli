(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_aws_auth_backend_config_identity

val vault_aws_auth_backend_config_identity :
  ?backend:string prop ->
  ?ec2_alias:string prop ->
  ?ec2_metadata:string prop list ->
  ?iam_alias:string prop ->
  ?iam_metadata:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  unit ->
  vault_aws_auth_backend_config_identity

val yojson_of_vault_aws_auth_backend_config_identity : vault_aws_auth_backend_config_identity -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  ec2_alias : string prop;
  ec2_metadata : string list prop;
  iam_alias : string prop;
  iam_metadata : string list prop;
  id : string prop;
  namespace : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend:string prop ->
  ?ec2_alias:string prop ->
  ?ec2_metadata:string prop list ->
  ?iam_alias:string prop ->
  ?iam_metadata:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  string ->
  t

val make :
  ?backend:string prop ->
  ?ec2_alias:string prop ->
  ?ec2_metadata:string prop list ->
  ?iam_alias:string prop ->
  ?iam_metadata:string prop list ->
  ?id:string prop ->
  ?namespace:string prop ->
  string ->
  t Tf_core.resource
