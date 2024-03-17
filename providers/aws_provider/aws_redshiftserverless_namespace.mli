(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_redshiftserverless_namespace

val aws_redshiftserverless_namespace :
  ?admin_user_password:string ->
  ?default_iam_role_arn:string ->
  ?log_exports:string list ->
  ?manage_admin_password:bool ->
  ?tags:(string * string) list ->
  namespace_name:string ->
  string ->
  unit
