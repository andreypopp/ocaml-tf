(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_organizations_account

val aws_organizations_account :
  ?close_on_deletion:bool prop ->
  ?create_govcloud:bool prop ->
  ?iam_user_access_to_billing:string prop ->
  ?id:string prop ->
  ?parent_id:string prop ->
  ?role_name:string prop ->
  ?tags:(string * string prop) list ->
  ?tags_all:(string * string prop) list ->
  email:string prop ->
  name:string prop ->
  string ->
  unit
