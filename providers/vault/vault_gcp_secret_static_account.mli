(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type binding

val binding : resource:string prop -> roles:string prop list -> unit -> binding

type vault_gcp_secret_static_account

val vault_gcp_secret_static_account :
  ?id:string prop ->
  ?namespace:string prop ->
  ?secret_type:string prop ->
  ?token_scopes:string prop list ->
  backend:string prop ->
  service_account_email:string prop ->
  static_account:string prop ->
  binding:binding list ->
  unit ->
  vault_gcp_secret_static_account

val yojson_of_vault_gcp_secret_static_account : vault_gcp_secret_static_account -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  id : string prop;
  namespace : string prop;
  secret_type : string prop;
  service_account_email : string prop;
  service_account_project : string prop;
  static_account : string prop;
  token_scopes : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?secret_type:string prop ->
  ?token_scopes:string prop list ->
  backend:string prop ->
  service_account_email:string prop ->
  static_account:string prop ->
  binding:binding list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  ?secret_type:string prop ->
  ?token_scopes:string prop list ->
  backend:string prop ->
  service_account_email:string prop ->
  static_account:string prop ->
  binding:binding list ->
  string ->
  t Tf_core.resource
