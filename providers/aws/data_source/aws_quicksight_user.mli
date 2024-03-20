(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_quicksight_user

val aws_quicksight_user :
  ?aws_account_id:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  user_name:string prop ->
  unit ->
  aws_quicksight_user

val yojson_of_aws_quicksight_user : aws_quicksight_user -> json

(** RESOURCE REGISTRATION *)

type t = private {
  active : bool prop;
  arn : string prop;
  aws_account_id : string prop;
  email : string prop;
  id : string prop;
  identity_type : string prop;
  namespace : string prop;
  principal_id : string prop;
  user_name : string prop;
  user_role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?aws_account_id:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  user_name:string prop ->
  string ->
  t

val make :
  ?aws_account_id:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  user_name:string prop ->
  string ->
  t Tf_core.resource
