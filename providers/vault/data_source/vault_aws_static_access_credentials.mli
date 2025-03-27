(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_aws_static_access_credentials

val vault_aws_static_access_credentials :
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  name:string prop ->
  unit ->
  vault_aws_static_access_credentials

val yojson_of_vault_aws_static_access_credentials : vault_aws_static_access_credentials -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  access_key : string prop;
  backend : string prop;
  id : string prop;
  name : string prop;
  namespace : string prop;
  secret_key : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  backend:string prop ->
  name:string prop ->
  string ->
  t

val make :
  ?id:string prop -> ?namespace:string prop -> backend:string prop -> name:string prop -> string -> t Tf_core.resource
