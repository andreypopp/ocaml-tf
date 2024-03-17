(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_organizations_account

val aws_organizations_account :
  ?close_on_deletion:bool ->
  ?create_govcloud:bool ->
  ?iam_user_access_to_billing:string ->
  ?role_name:string ->
  ?tags:(string * string) list ->
  email:string ->
  name:string ->
  string ->
  unit
