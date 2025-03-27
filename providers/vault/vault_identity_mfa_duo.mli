(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_mfa_duo

val vault_identity_mfa_duo :
  ?id:string prop ->
  ?namespace:string prop ->
  ?push_info:string prop ->
  ?use_passcode:bool prop ->
  ?username_format:string prop ->
  api_hostname:string prop ->
  integration_key:string prop ->
  secret_key:string prop ->
  unit ->
  vault_identity_mfa_duo

val yojson_of_vault_identity_mfa_duo : vault_identity_mfa_duo -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_hostname : string prop;
  id : string prop;
  integration_key : string prop;
  method_id : string prop;
  mount_accessor : string prop;
  name : string prop;
  namespace : string prop;
  namespace_id : string prop;
  namespace_path : string prop;
  push_info : string prop;
  secret_key : string prop;
  type_ : string prop;
  use_passcode : bool prop;
  username_format : string prop;
  uuid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?push_info:string prop ->
  ?use_passcode:bool prop ->
  ?username_format:string prop ->
  api_hostname:string prop ->
  integration_key:string prop ->
  secret_key:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  ?push_info:string prop ->
  ?use_passcode:bool prop ->
  ?username_format:string prop ->
  api_hostname:string prop ->
  integration_key:string prop ->
  secret_key:string prop ->
  string ->
  t Tf_core.resource
