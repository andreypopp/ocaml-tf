(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_redshiftserverless_namespace

val aws_redshiftserverless_namespace :
  ?admin_password_secret_kms_key_id:string prop ->
  ?admin_user_password:string prop ->
  ?admin_username:string prop ->
  ?db_name:string prop ->
  ?default_iam_role_arn:string prop ->
  ?iam_roles:string prop list ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?log_exports:string prop list ->
  ?manage_admin_password:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  namespace_name:string prop ->
  unit ->
  aws_redshiftserverless_namespace

val yojson_of_aws_redshiftserverless_namespace :
  aws_redshiftserverless_namespace -> json

(** RESOURCE REGISTRATION *)

type t = private {
  admin_password_secret_arn : string prop;
  admin_password_secret_kms_key_id : string prop;
  admin_user_password : string prop;
  admin_username : string prop;
  arn : string prop;
  db_name : string prop;
  default_iam_role_arn : string prop;
  iam_roles : string list prop;
  id : string prop;
  kms_key_id : string prop;
  log_exports : string list prop;
  manage_admin_password : bool prop;
  namespace_id : string prop;
  namespace_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

val register :
  ?tf_module:tf_module ->
  ?admin_password_secret_kms_key_id:string prop ->
  ?admin_user_password:string prop ->
  ?admin_username:string prop ->
  ?db_name:string prop ->
  ?default_iam_role_arn:string prop ->
  ?iam_roles:string prop list ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?log_exports:string prop list ->
  ?manage_admin_password:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  namespace_name:string prop ->
  string ->
  t

val make :
  ?admin_password_secret_kms_key_id:string prop ->
  ?admin_user_password:string prop ->
  ?admin_username:string prop ->
  ?db_name:string prop ->
  ?default_iam_role_arn:string prop ->
  ?iam_roles:string prop list ->
  ?id:string prop ->
  ?kms_key_id:string prop ->
  ?log_exports:string prop list ->
  ?manage_admin_password:bool prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  namespace_name:string prop ->
  string ->
  t Tf_core.resource
