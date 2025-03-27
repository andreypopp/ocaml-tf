(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type vault_mfa_okta

val vault_mfa_okta :
  ?base_url:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?primary_email:bool prop ->
  ?username_format:string prop ->
  api_token:string prop ->
  mount_accessor:string prop ->
  name:string prop ->
  org_name:string prop ->
  unit ->
  vault_mfa_okta

val yojson_of_vault_mfa_okta : vault_mfa_okta -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  api_token : string prop;
  base_url : string prop;
  id : string prop;
  mount_accessor : string prop;
  name : string prop;
  namespace : string prop;
  org_name : string prop;
  primary_email : bool prop;
  username_format : string prop;
}

val register :
  ?tf_module:tf_module ->
  ?base_url:string prop ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?primary_email:bool prop ->
  ?username_format:string prop ->
  api_token:string prop ->
  mount_accessor:string prop ->
  name:string prop ->
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
  mount_accessor:string prop ->
  name:string prop ->
  org_name:string prop ->
  string ->
  t Tf_core.resource
