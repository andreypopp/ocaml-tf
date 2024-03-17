(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshiftserverless_namespace

val aws_redshiftserverless_namespace :
  ?admin_password_secret_kms_key_id:string ->
  ?admin_user_password:string ->
  ?admin_username:string ->
  ?db_name:string ->
  ?default_iam_role_arn:string ->
  ?iam_roles:string list ->
  ?id:string ->
  ?kms_key_id:string ->
  ?log_exports:string list ->
  ?manage_admin_password:bool ->
  ?tags:(string * string) list ->
  ?tags_all:(string * string) list ->
  namespace_name:string ->
  string ->
  unit
