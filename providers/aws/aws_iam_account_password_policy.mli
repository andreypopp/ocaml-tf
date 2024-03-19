(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_iam_account_password_policy

val aws_iam_account_password_policy :
  ?allow_users_to_change_password:bool prop ->
  ?hard_expiry:bool prop ->
  ?id:string prop ->
  ?max_password_age:float prop ->
  ?minimum_password_length:float prop ->
  ?password_reuse_prevention:float prop ->
  ?require_lowercase_characters:bool prop ->
  ?require_numbers:bool prop ->
  ?require_symbols:bool prop ->
  ?require_uppercase_characters:bool prop ->
  unit ->
  aws_iam_account_password_policy

val yojson_of_aws_iam_account_password_policy :
  aws_iam_account_password_policy -> json

(** RESOURCE REGISTRATION *)

type t = private {
  allow_users_to_change_password : bool prop;
  expire_passwords : bool prop;
  hard_expiry : bool prop;
  id : string prop;
  max_password_age : float prop;
  minimum_password_length : float prop;
  password_reuse_prevention : float prop;
  require_lowercase_characters : bool prop;
  require_numbers : bool prop;
  require_symbols : bool prop;
  require_uppercase_characters : bool prop;
}

val register :
  ?tf_module:tf_module ->
  ?allow_users_to_change_password:bool prop ->
  ?hard_expiry:bool prop ->
  ?id:string prop ->
  ?max_password_age:float prop ->
  ?minimum_password_length:float prop ->
  ?password_reuse_prevention:float prop ->
  ?require_lowercase_characters:bool prop ->
  ?require_numbers:bool prop ->
  ?require_symbols:bool prop ->
  ?require_uppercase_characters:bool prop ->
  string ->
  t
