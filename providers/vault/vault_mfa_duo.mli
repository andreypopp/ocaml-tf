(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_mfa_duo

val vault_mfa_duo :
  ?id:string prop ->
  ?namespace:string prop ->
  ?push_info:string prop ->
  ?username_format:string prop ->
  api_hostname:string prop ->
  integration_key:string prop ->
  mount_accessor:string prop ->
  name:string prop ->
  secret_key:string prop ->
  unit ->
  vault_mfa_duo

val yojson_of_vault_mfa_duo : vault_mfa_duo -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_hostname : string prop;
  id : string prop;
  integration_key : string prop;
  mount_accessor : string prop;
  name : string prop;
  namespace : string prop;
  push_info : string prop;
  secret_key : string prop;
  username_format : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?push_info:string prop ->
  ?username_format:string prop ->
  api_hostname:string prop ->
  integration_key:string prop ->
  mount_accessor:string prop ->
  name:string prop ->
  secret_key:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  ?push_info:string prop ->
  ?username_format:string prop ->
  api_hostname:string prop ->
  integration_key:string prop ->
  mount_accessor:string prop ->
  name:string prop ->
  secret_key:string prop ->
  string ->
  t Tf_core.resource
