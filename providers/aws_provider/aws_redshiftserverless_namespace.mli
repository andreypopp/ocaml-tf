(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

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
  string ->
  unit
