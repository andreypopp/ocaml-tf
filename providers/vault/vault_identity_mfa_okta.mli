(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_identity_mfa_okta

val vault_identity_mfa_okta :
  ?base_url:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?primary_email:bool prop ->
  ?username_format:string prop ->
  api_token:string prop ->
  org_name:string prop ->
  unit ->
  vault_identity_mfa_okta

val yojson_of_vault_identity_mfa_okta : vault_identity_mfa_okta -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_token : string prop;
  base_url : string prop;
  id : string prop;
  method_id : string prop;
  mount_accessor : string prop;
  name : string prop;
  namespace : string prop;
  namespace_id : string prop;
  namespace_path : string prop;
  org_name : string prop;
  primary_email : bool prop;
  type_ : string prop;
  username_format : string prop;
  uuid : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?base_url:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?primary_email:bool prop ->
  ?username_format:string prop ->
  api_token:string prop ->
  org_name:string prop ->
  string ->
  t

val make :
  ?base_url:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?primary_email:bool prop ->
  ?username_format:string prop ->
  api_token:string prop ->
  org_name:string prop ->
  string ->
  t Tf_core.resource
