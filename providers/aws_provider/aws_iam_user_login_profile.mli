(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_user_login_profile

val aws_iam_user_login_profile :
  ?id:string ->
  ?password_length:float ->
  ?password_reset_required:bool ->
  ?pgp_key:string ->
  user:string ->
  string ->
  unit
