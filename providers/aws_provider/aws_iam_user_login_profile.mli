(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_user_login_profile

val aws_iam_user_login_profile :
  ?id:string prop ->
  ?password_length:float prop ->
  ?password_reset_required:bool prop ->
  ?pgp_key:string prop ->
  user:string prop ->
  string ->
  unit
