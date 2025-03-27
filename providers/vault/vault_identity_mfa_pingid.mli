(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_mfa_pingid

val vault_identity_mfa_pingid :
  ?id:string prop ->
  ?namespace:string prop ->
  ?username_format:string prop ->
  settings_file_base64:string prop ->
  unit ->
  vault_identity_mfa_pingid

val yojson_of_vault_identity_mfa_pingid : vault_identity_mfa_pingid -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  admin_url : string prop;
  authenticator_url : string prop;
  id : string prop;
  idp_url : string prop;
  method_id : string prop;
  mount_accessor : string prop;
  name : string prop;
  namespace : string prop;
  namespace_id : string prop;
  namespace_path : string prop;
  org_alias : string prop;
  settings_file_base64 : string prop;
  type_ : string prop;
  use_signature : bool prop;
  username_format : string prop;
  uuid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?username_format:string prop ->
  settings_file_base64:string prop ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  ?username_format:string prop ->
  settings_file_base64:string prop ->
  string ->
  t Tf_core.resource
