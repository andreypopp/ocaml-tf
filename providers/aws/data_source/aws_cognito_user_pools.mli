(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type aws_cognito_user_pools

val aws_cognito_user_pools :
  ?id:string prop ->
  name:string prop ->
  unit ->
  aws_cognito_user_pools

val yojson_of_aws_cognito_user_pools : aws_cognito_user_pools -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  arns : string list prop;
  id : string prop;
  ids : string list prop;
  name : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> name:string prop -> string -> t Tf_core.resource
