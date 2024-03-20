(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_user_login_profile

val aws_iam_user_login_profile :
  ?id:string prop ->
  ?password_length:float prop ->
  ?password_reset_required:bool prop ->
  ?pgp_key:string prop ->
  user:string prop ->
  unit ->
  aws_iam_user_login_profile

val yojson_of_aws_iam_user_login_profile :
  aws_iam_user_login_profile -> json

(** RESOURCE REGISTRATION *)

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

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?password_length:float prop ->
  ?password_reset_required:bool prop ->
  ?pgp_key:string prop ->
  user:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?password_length:float prop ->
  ?password_reset_required:bool prop ->
  ?pgp_key:string prop ->
  user:string prop ->
  string ->
  t Tf_core.resource
