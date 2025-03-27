(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

(** RESOURCE SERIALIZATION *)

type binding

val binding : resource:string prop -> roles:string prop list -> unit -> binding

type vault_gcp_secret_roleset

val vault_gcp_secret_roleset :
  ?id:string prop ->
  ?namespace:string prop ->
  ?secret_type:string prop ->
  ?token_scopes:string prop list ->
  backend:string prop ->
  project:string prop ->
  roleset:string prop ->
  binding:binding list ->
  unit ->
  vault_gcp_secret_roleset

val yojson_of_vault_gcp_secret_roleset : vault_gcp_secret_roleset -> json

(** RESOURCE REGISTRATION *)

type t = private {
  tf_name : string;
  backend : string prop;
  id : string prop;
  namespace : string prop;
  project : string prop;
  roleset : string prop;
  secret_type : string prop;
  service_account_email : string prop;
  token_scopes : string list prop;
}

val register :
  ?tf_module:tf_module ->
  ?id:string prop ->
  ?namespace:string prop ->
  ?secret_type:string prop ->
  ?token_scopes:string prop list ->
  backend:string prop ->
  project:string prop ->
  roleset:string prop ->
  binding:binding list ->
  string ->
  t

val make :
  ?id:string prop ->
  ?namespace:string prop ->
  ?secret_type:string prop ->
  ?token_scopes:string prop list ->
  backend:string prop ->
  project:string prop ->
  roleset:string prop ->
  binding:binding list ->
  string ->
  t Tf_core.resource
