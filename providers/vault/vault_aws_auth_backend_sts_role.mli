(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_aws_auth_backend_sts_role

val vault_aws_auth_backend_sts_role :
  ?backend:string prop ->
  ?external_id:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  account_id:string prop ->
  sts_role:string prop ->
  unit ->
  vault_aws_auth_backend_sts_role

val yojson_of_vault_aws_auth_backend_sts_role : vault_aws_auth_backend_sts_role -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  account_id : string prop;
  backend : string prop;
  external_id : string prop;
  id : string prop;
  namespace : string prop;
  sts_role : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?backend:string prop ->
  ?external_id:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  account_id:string prop ->
  sts_role:string prop ->
  string ->
  t

val make :
  ?backend:string prop ->
  ?external_id:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  account_id:string prop ->
  sts_role:string prop ->
  string ->
  t Tf_core.resource
