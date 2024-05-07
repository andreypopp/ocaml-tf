(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_iam_account_alias

val aws_iam_account_alias :
  ?id:string prop ->
  account_alias:string prop ->
  unit ->
  aws_iam_account_alias

val yojson_of_aws_iam_account_alias : aws_iam_account_alias -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_alias : string prop;
  id : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  account_alias:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  account_alias:string prop ->
  string ->
  t Tf_core.resource
