(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshiftserverless_namespace

val aws_redshiftserverless_namespace :
  ?id:string prop ->
  namespace_name:string prop ->
  unit ->
  aws_redshiftserverless_namespace

val yojson_of_aws_redshiftserverless_namespace :
  aws_redshiftserverless_namespace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  admin_username : string prop;
  arn : string prop;
  db_name : string prop;
  default_iam_role_arn : string prop;
  iam_roles : string list prop;
  id : string prop;
  kms_key_id : string prop;
  log_exports : string list prop;
  namespace_id : string prop;
  namespace_name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  namespace_name:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  namespace_name:string prop ->
  string ->
  t Tf_core.resource
