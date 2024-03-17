(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_user_login_profile

type t = private {
  encrypted_password : string prop;
  id : string prop;
  key_fingerprint : string prop;
  password : string prop;
  password_length : float prop;
  password_reset_required : bool prop;
  pgp_key : string prop;
  user : string prop;
}

val aws_iam_user_login_profile :
  ?id:string prop ->
  ?password_length:float prop ->
  ?password_reset_required:bool prop ->
  ?pgp_key:string prop ->
  user:string prop ->
  string ->
  t
