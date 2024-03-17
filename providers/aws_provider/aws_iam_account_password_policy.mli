(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

type aws_iam_account_password_policy

val aws_iam_account_password_policy :
  ?allow_users_to_change_password:bool ->
  ?hard_expiry:bool ->
  ?id:string ->
  ?max_password_age:float ->
  ?minimum_password_length:float ->
  ?password_reuse_prevention:float ->
  ?require_lowercase_characters:bool ->
  ?require_numbers:bool ->
  ?require_symbols:bool ->
  ?require_uppercase_characters:bool ->
  string ->
  unit
