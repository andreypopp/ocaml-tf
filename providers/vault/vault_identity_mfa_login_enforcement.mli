(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_mfa_login_enforcement

val vault_identity_mfa_login_enforcement :
  ?auth_method_accessors:string prop list ->
  ?auth_method_types:string prop list ->
  ?id:string prop ->
  ?identity_entity_ids:string prop list ->
  ?identity_group_ids:string prop list ->
  ?namespace:string prop ->
  mfa_method_ids:string prop list ->
  name:string prop ->
  unit ->
  vault_identity_mfa_login_enforcement

val yojson_of_vault_identity_mfa_login_enforcement : vault_identity_mfa_login_enforcement -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  auth_method_accessors : string list prop;
  auth_method_types : string list prop;
  id : string prop;
  identity_entity_ids : string list prop;
  identity_group_ids : string list prop;
  mfa_method_ids : string list prop;
  name : string prop;
  namespace : string prop;
  namespace_id : string prop;
  namespace_path : string prop;
  uuid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?auth_method_accessors:string prop list ->
  ?auth_method_types:string prop list ->
  ?id:string prop ->
  ?identity_entity_ids:string prop list ->
  ?identity_group_ids:string prop list ->
  ?namespace:string prop ->
  mfa_method_ids:string prop list ->
  name:string prop ->
  string ->
  t

val make :
  ?auth_method_accessors:string prop list ->
  ?auth_method_types:string prop list ->
  ?id:string prop ->
  ?identity_entity_ids:string prop list ->
  ?identity_group_ids:string prop list ->
  ?namespace:string prop ->
  mfa_method_ids:string prop list ->
  name:string prop ->
  string ->
  t Tf_core.resource
