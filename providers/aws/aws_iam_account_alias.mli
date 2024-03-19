(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf.Prelude

(** RESOURCE SERIALIZATION *)

type aws_iam_account_alias

val aws_iam_account_alias :
  ?id:string prop ->
  account_alias:string prop ->
  unit ->
  aws_iam_account_alias

val yojson_of_aws_iam_account_alias : aws_iam_account_alias -> json

(** RESOURCE REGISTRATION *)

type t = private { account_alias : string prop; id : string prop }

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_alias:string prop ->
  string ->
  t
